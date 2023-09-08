# Zap all arguments from the process list

1. Works on static binaries as well (e.g. GoLang)
2. Does not rely on *LD_PRELOAD=*
3. Zaps the environment (*/proc/<pid>/environ*) as well


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

