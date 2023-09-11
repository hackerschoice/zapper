

all: simple simple-static hello

simple: simple.c
	gcc -Wall -o simple simple.c

simple-static: simple.c
	gcc -Wall -static -o simple-static simple.c


hello: hello.go
	go build hello.go
