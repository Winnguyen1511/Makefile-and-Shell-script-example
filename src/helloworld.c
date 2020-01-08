#include <stdio.h>
#include "testlib.h"

int main(int argc, char**argv)
{
	int a = 2, b = 3;
	printf("a + b = %d\n",add(a,b));
	printf("a * b = %d\n", multi(a,b));
	return 0;
}
