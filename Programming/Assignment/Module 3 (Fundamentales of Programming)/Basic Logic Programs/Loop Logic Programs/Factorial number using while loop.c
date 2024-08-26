// calculate the Factorial of a Given Number using while loop

#include <stdio.h>

main() 
{
	
    int num, factorial = 1;

    printf("Enter a number: ");
    scanf("%d", &num);

    int originalNum = num;

    while (num > 0) {
        factorial *= num;  // Multiply the current value of factorial by the current value of num
        num--;             // Decrement the value of num
    }

    printf("Factorial of %d is %d\n", originalNum, factorial);

}

