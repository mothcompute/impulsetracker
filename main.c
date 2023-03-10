#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv) {
	int arglen = 1; // null terminator
	for(int i = 0; i < argc; i++) arglen += strlen(argv[i]);
	char* args = memset(malloc(arglen * sizeof(char)), 0, arglen);
	for(int i = 0; i < argc; i++) strcat(args, argv[i]);

	return printf("pretend this is impulse tracker\n"); // TODO make this impulse tracker
}
