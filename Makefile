

all: tests zapper

zapper: zapper.c
	gcc -Wall -static -o zapper zapper.c
	strip zapper

tests:
	$(MAKE) -C tests


.PHONY: all tests

