// WAP to perform Palindrome number using for loop and function

#include <stdio.h>

isPalindrome(int num) 
{
	
    int originalNum = num; 
    int reversedNum = 0;  
    int remainder;

    while (num != 0) {
        remainder = num % 10;         
        reversedNum = reversedNum * 10 + remainder; 
        num /= 10;
    }

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

