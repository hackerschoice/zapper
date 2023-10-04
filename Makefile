ZVER="\"1.1\""
CFLAGS := $(CFLAGS) -DZVER=$(ZVER) -O2 -Wall

all: zapper

# CFLAGS=-DDEBUG make clean all
dev:
	CFLAGS="$(CFLAGS) -DDEBUG" make zapper

zapper: zapper.c
	gcc $(CFLAGS) -static -o zapper zapper.c
	strip zapper

clean:
	rm -f zapper 2>/dev/null
	if [ -f tests/Makefile ]; then $(MAKE) -C tests clean; fi

tests:
	$(MAKE) -C tests

.PHONY: all dev tests clean

