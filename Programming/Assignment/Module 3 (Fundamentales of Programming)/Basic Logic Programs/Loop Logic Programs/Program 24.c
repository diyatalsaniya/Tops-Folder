#include <stdio.h>

main() 
{
	
    int n, sum = 0, i;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) 
	{
        sum += i;
    }

    printf("Sum of the series 1 + 2 + 3 + ... + %d = %d\n", n, sum);

}

