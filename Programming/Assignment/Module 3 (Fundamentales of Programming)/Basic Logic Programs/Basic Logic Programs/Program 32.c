#include <stdio.h>

main() 
{
    int num1, num2, sum;

    printf("Enter first number: ");
    scanf("%d", &num1);

    printf("Enter second number: ");
    scanf("%d", &num2);

    sum = num1 + num2;

    if (sum > 0) {
        printf("The sum is positive.\n");
    } else if (sum < 0) {
        printf("The sum is negative.\n");
    } else {
        printf("The sum is zero.\n");
    }

    printf("The sum is: %d\n", sum);

}
