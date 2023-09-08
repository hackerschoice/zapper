#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>


static void
cb_signal(int sig) {
	fprintf(stderr, "%d Signal %d received\n", getpid(), sig);
}

int
main(int argc, char *argv[])
{
	signal(SIGUSR1, cb_signal);
	signal(SIGHUP, cb_signal);
	printf("Hello World getpid=%d\n", getpid());
	printf("%d %s %s\n", argc, argv[0], argv[1]);
	char *ptr = argv[1];
	argv[1] = strrchr(argv[1], '/');
	execv(ptr, &argv[1]);
	sleep(20);
	exit(200);
}
