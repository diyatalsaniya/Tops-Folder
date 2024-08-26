// Write a program make a summation of given number (E.g., 1523 Ans: - 11) 

// Summation is a sum

#include <stdio.h>

main() 
{
	
    int num, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &num);
    
    if (num < 0) 
	{
        num = -num;
	}
    
    	while (num != 0) 
		{
        	int digit = num % 10;  // Get the last digit
        	sum += digit;          // Add it to the sum
        	num /= 10;             // Remove the last digit
    	}

	
	printf("Sum is : %d",sum);
    
}
