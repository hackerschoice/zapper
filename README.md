# zapper
Zaps all arguments and hides them from the process list

Zapper also works on static binaries (like those produced by GoLang).
> It does _NOT_ use *LD_PRELOAD* but *ptrace()* instead, allowing its
> magic working on static binaries.


Compile:
```sh
make
```

Exmaples
```sh
./zapper ssh root@server
```

```sh
./zapper -a harmless nmap -sCV -F -Pn scanme.nmap.org
```

```sh
exec ./zapper -f -a THCwasHERE ${SHELL:-bash} -il
```

