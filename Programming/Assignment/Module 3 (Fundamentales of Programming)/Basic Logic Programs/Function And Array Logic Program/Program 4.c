// WAP to find factorial using recursion

#include <stdio.h>

factorial(int n) 
{

    if (n == 0 || n == 1) 
	{
        return 1;
    } 
	else 
	{
        return n * factorial(n - 1);
    }
}

main() 
{
	
    int num;

    printf("Enter a positive integer: ");
    scanf("%d", &num);

    if (num < 0) 
	{
        printf("Factorial is not defined for negative numbers.\n");
    } 
	else 
	{
        printf("Factorial of %d is %d\n", num, factorial(num));
    }

}

