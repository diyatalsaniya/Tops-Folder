// WAP to perform Palindrome number using for loop and function

#include <stdio.h>

isPalindrome(int num) 
{
	
    int originalNum = num; 
    int reversedNum = 0;  
    int remainder;

	// Reverse the number
    while (num != 0) {
        remainder = num % 10;      // Get the last digit   
        reversedNum = reversedNum * 10 + remainder; 	// Build the reversed number
        num /= 10;		// Remove the last digit from the original number
    }
    
    // Check if the original number is equal to the reversed number
    return originalNum == reversedNum;
}

main() 
{
	
    int num;

    printf("Enter an integer: ");
    scanf("%d", &num);

    if (isPalindrome(num)) 
	{
        printf("%d is a palindrome.\n", num);
    } 
	else 
	{
        printf("%d is not a palindrome.\n", num);
    }

}

