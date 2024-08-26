// WAP to print number in reverse order e.g.: number = 64728 ---> reverse =82746


#include <stdio.h>

main() 
{
	
    int num, reversed = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    while (num != 0) {
        int reminder = num % 10;
        reversed = reversed * 10 + reminder;
        num = num/10;
    }

    printf("Reversed number: %d\n", reversed);

}

