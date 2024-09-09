// Write a program you have to make a summation of first and last Digit. (E.g., 1234 Ans: -5)

#include <stdio.h>

main() 
{
    int num, firstDigit, lastDigit;

    printf("Enter a number: ");
    scanf("%d", &num);
    
    if (num < 0) {
        num = -num;
    }

    // Get the last digit
    lastDigit = num % 10;

    // Find the first digit
    while (num >= 10) {
        num /= 10;
    }
    firstDigit = num;

    // Calculate the sum of the first and last digits
    int sum = firstDigit + lastDigit;

    printf("Sum of first and last digit: %d\n", sum);

}

