#include <stdio.h>

main() 
{
	
    int num, reversedNum = 0, remainder;

    printf("Enter an integer: ");
    scanf("%d", &num);
    
    // Loop to reverse the digits of the number
    for (; num != 0; num /= 10) 
	{
        remainder = num % 10;	// Get the last digit of the number
        reversedNum = reversedNum * 10 + remainder;	// Append the digit to the reversed number
    }

    printf("Reversed Number: %d\n", reversedNum);

}

