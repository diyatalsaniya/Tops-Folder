#include <stdio.h>

main() 
{
	
    int n, totalSum = 0, i, j;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        int partialSum = 0;
        for (j = 1; j <= i; j++) {
            partialSum += j;
        }
        totalSum += partialSum;
    }

    printf("Sum of the series (1) + (1+2) + ... + (1+2+...+%d) = %d\n", n, totalSum);

}

