#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int solution(int n, int k) {
    int a = n*12000;
    int b = (k*2000) - (n/10*2000);
    return a+b;
}