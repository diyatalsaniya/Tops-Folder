#include <stdio.h>

main() 
{
	
    int n, i;
    printf("Enter the number of terms to generate: ");
    scanf("%d", &n);

    int sequence[n];
    sequence[0] = 1;
    sequence[1] = 2;
    sequence[2] = 3;

    for (i = 3; i < n; i++) {
        if (i % 2 == 0) {
            sequence[i] = sequence[i - 1] * 2; // Double the previous number
        } else {
            sequence[i] = sequence[i - 1] * 3 / 2; // Multiply the previous number by 1.5 (i.e., multiply by 3, divide by 2)
        }
    }

    printf("Generated sequence: ");
    for (i = 0; i < n; i++) {
        printf("%d ", sequence[i]);
    }
    printf("\n");

}

