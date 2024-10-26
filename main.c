#include <stdio.h>
#include <unistd.h>

int main(void) {

    char elogin[L_cuserid];
    int euid = geteuid();

    cuserid(elogin);

    printf("Hi! My user name is '%s' and my user ID number id %d\n", elogin, euid);
    return 0;
}

