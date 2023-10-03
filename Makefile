
CFLAGS := $(CFLAGS) -O2 -Wall

all: zapper

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

.PHONY: all dev tests

