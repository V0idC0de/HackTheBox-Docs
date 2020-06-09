# Writeup - Magic

> --- Work in progress ---

## Result
I was able to get into userland and get the `user.txt` flag, after a light bump into the right direction.
That bump was to use `exiftool` to store executable script code in JPG metadata, instead of dumping the code
in the middle of the picture. The latter would've worked, if it weren't for the server-side filter,
that appears to filter for filename AND content.

For content, it seems that the picture has to a valid JPG. Just having the magic bytes `FF D8` and `FF D9` wasn't sufficient to fool the filter.

**However, I couldn't obtain `root` access.**
The solution, according to a write-up, lies within an executable `/bin/sysinfo` which is custom and usually not part of the operating system.
It invokes `lshw` relatively, which allows for a PATH-hijack attack.

**_As I wouldn't have found that thing on my own and haven't had the knowledge to identify thing executable as not pre-installed,
I haven't claimed the root flag._**

# Lessons Learned

`exiftool` comes in very handy when manipulating media files, especially for storing malicious data (or exfiltrating something).
I previously didn't exactly know about this tool.

In addition, I looked up a tool that is able to identify unusual (i.e. user defined and especially SUID files) executables to identify
attack surface quickly. Nothing too obvious came up, so I'll probably create a couple Docker containers of usual Linux distros and
popular software. With this, I can enumerate all files in `/bin/`, `/sbin/`, `/usr/bin/`, `/usr/sbin/`, `/usr/local/sbin/` and `/usr/local/bin/`.
Using that list, it should be easy to find executables, that were created by some user or server admin, even if they are stored in one of the above directories,
as they are pretty messy and filled with several dozens or files.