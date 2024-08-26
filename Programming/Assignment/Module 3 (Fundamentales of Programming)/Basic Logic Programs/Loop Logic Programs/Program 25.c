#include <stdio.h>

main() 
{
	
    int n, sum = 0, i;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        sum += i * i;
    }

    printf("Sum of the series (1*1) + (2*2) + (3*3) + ... + (%d*%d) = %d\n", n, n, sum);

}

