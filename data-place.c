#include <stdlib.h>
int a;
int b = 100;
int func(int c, int d);
int main(){
    int *buf;
    a = func(b,5);
    buf = (int*)malloc(1024);
    return a;
}