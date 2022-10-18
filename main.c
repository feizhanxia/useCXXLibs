/*main.c*/
#include <stdio.h>
#include "add.h"
#include "sub.h"
#include <gsl/gsl_sf_bessel.h>

int main(void)
{
	printf("1 + 2 =%d\n", add(1, 2));
	printf("1 - 2 =%d\n", sub(1, 2));
	double x = 5.0;
    double y = gsl_sf_bessel_J0 (x);
    printf ("J0(%g) = %.18e\n", x, y);
	return 0;
}
