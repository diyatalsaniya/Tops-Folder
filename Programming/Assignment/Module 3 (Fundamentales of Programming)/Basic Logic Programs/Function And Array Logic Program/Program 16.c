// Accept 5 numbers from user and perform sum of array

#include <stdio.h>

#define SIZE 5	// Number of elements in the array

main() 
{
	
    int numbers[SIZE]; 	// Array to store numbers
    int sum = 0, i;      

    printf("Enter %d numbers:\n", SIZE);
    for (i = 0; i < SIZE; i++) 
	{
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }
    
    // Calculate the sum of the array elements
    for (i = 0; i < SIZE; i++) 
	{
        sum += numbers[i];
    }

    printf("Sum of the array elements: %d\n", sum);

}

