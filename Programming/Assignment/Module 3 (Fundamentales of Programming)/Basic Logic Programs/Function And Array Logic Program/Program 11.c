// WAP to accept 5 numbers from user and display in reverse order using forloop and array

#include <stdio.h>

main() 
{
	
    int numbers[5];

    printf("Enter 5 numbers:\n");
    // Input 5 numbers from the user
    for (int i = 0; i < 5; i++) 
	{
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    printf("Numbers in reverse order:\n");
    // Print the numbers in reverse order
    for (int i = 4; i >= 0; i--) 
	{
        printf("%d ", numbers[i]);
    }
    
    printf("\n");

}

