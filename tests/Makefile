

all: simple simple-static hello

simple: simple.c
	gcc -Wall -o simple simple.c

simple-static: simple.c
	gcc -Wall -static -o simple-static simple.c

clean:
	rm -f hello simple simple-static 2>/dev/null

hello: hello.go
	go build hello.go
