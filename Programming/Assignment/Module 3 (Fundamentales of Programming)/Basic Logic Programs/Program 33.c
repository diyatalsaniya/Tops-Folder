#include <stdio.h>

main() 
{
    int num, power1, power2, power3;

    printf("Enter an integer: ");
    scanf("%d", &num);

    power1 = num;
    power2 = num * num;
    power3 = num * num * num;

    printf("N^1 = %d\n", power1);
    printf("N^2 = %d\n", power2);
    printf("N^3 = %d\n", power3);

}
