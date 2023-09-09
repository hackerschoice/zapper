# Zap the command options from the process list

```sh
# Example to hide namp's command options:
$ ./zapper nmap -sCV -F -Pn scanme.nmap.org
# This will only show "nmap" without any command options in the ps-list.
```

1. Does not rely on *LD_PRELOAD=*
2. Works also on static binaries (e.g. GoLang)
3. Zaps the environment (*/proc/&lt;PID&gt;/environ*) as well
4. Does not require *root*
5. Only 00.1% overhead.


Compile:
```sh
git clone https://github.com/hackerschoice/zapper.git
cd zapper
make
```
Exmaples
```sh
./zapper ssh root@server
```

```sh
./zapper -a harmless nmap -sCV -F -Pn scanme.nmap.org
```

Our all time favorite, hide the current shell all child processes:
```sh
exec ./zapper -f -a THCwasHERE ${SHELL:-bash} -il
```

![Screenshot 2023-09-08 at 09 51 25](https://github.com/hackerschoice/zapper/assets/5938498/a8c8ceaa-456e-49d5-8dd9-fa09c6ff0060)

