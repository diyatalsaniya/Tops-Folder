// Program of Armstrong Number in C Using For Loop & While 

#include <stdio.h>

main() 
{
	
    int num, originalNum, remainder, result = 0, n = 0, i;

    printf("Enter an integer: ");
    scanf("%d", &num);

    originalNum = num;		// Store the original number for comparison later
    
    // Calculate the number of digits in the input number
    while (originalNum != 0) 
	{
        originalNum /= 10;
        n++;
    }

    originalNum = num;	// Reset originalNum to the input number

    for (i = 0; i < n; i++) 
	{
        remainder = originalNum % 10;	// Get the last digit
        result += pow(remainder, n);	// Add the nth power of the digit to the result
        originalNum /= 10;	// Remove the last digit
    }

    if (result == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

    return 0;
}

