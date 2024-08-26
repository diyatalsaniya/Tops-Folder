// Program of Armstrong Number in C Using For Loop & While 

#include <stdio.h>

main() 
{
	
    int num, originalNum, remainder, result = 0, n = 0, i;

    printf("Enter an integer: ");
    scanf("%d", &num);

    originalNum = num;
    while (originalNum != 0) {
        originalNum /= 10;
        n++;
    }

    originalNum = num;

    for (i = 0; i < n; i++) 
	{
        remainder = originalNum % 10;
        result += pow(remainder, n);
        originalNum /= 10;
    }

    if (result == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

    return 0;
}

