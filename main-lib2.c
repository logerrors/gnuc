#include <stdio.h>
#include "vector.h"

int x[2] = {1,2};
int y[2] = {3,4};
int z[2];

extern int gval = 200;
extern int gval2;

int main(){
    addvec(x,y,z,2);
    printf("z = [%d %d]\b", z[0], z[1]);
    return gval + gval2;
}