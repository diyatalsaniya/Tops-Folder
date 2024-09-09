#include <stdio.h>

isPalindrome(int num) 
{
    int originalNum = num;
    int reversedNum = 0;
    int remainder;
    
    // Reverse the number
    while (num != 0) 
	{
        remainder = num % 10;	// Get the last digit
        reversedNum = reversedNum * 10 + remainder;	// Build the reversed number
        num /= 10;	// Remove the last digit
    }

    return originalNum == reversedNum;
}

main() 
{
    int count = 0;
    int num;
    
    // Loop to get three numbers from the user
    while (count < 3) 
	{
        printf("Enter number %d: ", count + 1);
        scanf("%d", &num);

        if (isPalindrome(num)) 
		{
            printf("%d is a palindrome.\n", num);
        } 
		else 
		{
            printf("%d is not a palindrome.\n", num);
        }

        count++;
    }

}

