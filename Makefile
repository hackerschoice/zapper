
CFLAGS := $(CFLAGS) -O2 -Wall

all: tests zapper

zapper: zapper.c
	gcc $(CFLAGS) -static -o zapper zapper.c
	strip zapper

tests:
	$(MAKE) -C tests


.PHONY: all tests

