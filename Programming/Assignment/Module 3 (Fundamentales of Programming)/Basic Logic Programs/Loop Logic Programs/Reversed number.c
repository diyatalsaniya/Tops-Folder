// WAP to print number in reverse order e.g.: number = 64728 ---> reverse =82746


#include <stdio.h>

main() 
{
	
    int num, reversed = 0;

    printf("Enter a number: ");
    scanf("%d", &num);
    
    // Loop to reverse the digits of the number
    while (num != 0) 
	{
        int reminder = num % 10;	// Get the last digit of the number
        reversed = reversed * 10 + reminder;	// Append the digit to the reversed number
        num = num/10;	// Remove the last digit from the number
    }

    printf("Reversed number: %d\n", reversed);

}

