# Writeup - ScriptKiddie

- Kein HTTP server auf 80 und 443
- Full NMap scan mit -sV (irgendwas komisches läuft hier)


```
Host is up (0.033s latency).
Not shown: 65533 closed ports
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.1 (Ubuntu Linux; protocol 2.0)
5000/tcp open  http    Werkzeug httpd 0.16.1 (Python 3.8.5)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel
```

HTTP@5000:
~landing-page.png

triviale command injection mit 127.0.0.1; ping x.y.z schlägt fehlt (Input Filter)
    - Versuchte Env-Vars einzugeben mit $ -> fail

Nmapping und Searchsploit gehen.
msfvenom lehnt non-ELF files ab. Eine kopie von Bash failed allerdings.
Ebenso wenn man NICHTS mitgibt (was auf jeden fall gehen sollte)
Windows ohne Vorlage geht

Commandinject via Filename failed -> ; wird gefiltert
    -> && wird ebenfalls gefiltert, jedoch anders (Codierung?)