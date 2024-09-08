// WAP to accept 5 numbers from user and check entered number is even or oddusing of array

#include <stdio.h>

#define NUM_COUNT 5		// Number of integers to be input

main() 
{
	
    int numbers[NUM_COUNT], i;

    printf("Enter %d numbers:\n", NUM_COUNT);
    for (i = 0; i < NUM_COUNT; i++) 
	{
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }
    
    // Check if each number is even or odd
    printf("\nChecking if each number is even or odd:\n");
    for (i = 0; i < NUM_COUNT; i++) 
	{
        if (numbers[i] % 2 == 0) 
		{
            printf("Number %d is even.\n", numbers[i]);
        } 
		else 
		{
            printf("Number %d is odd.\n", numbers[i]);
        }
    }

}

