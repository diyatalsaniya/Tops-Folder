#include <stdio.h>

main() 
{
	
    int n, i;
    double sum = 0.0;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    for (i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            sum -= (double)i / (i + 1);  // Subtract when i is even
        } else {
            sum += (double)i / (i + 1);  // Add when i is odd
        }
    }

    printf("Sum of the series = %.6f\n", sum);

}

