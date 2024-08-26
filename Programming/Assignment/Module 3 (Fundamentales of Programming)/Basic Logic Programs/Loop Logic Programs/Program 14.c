// Accept 5 numbers from user and find those numbers factorials

#include <stdio.h>

main() 
{
	
    int numbers[5];  
    int factorial, i;  

    for (i = 0; i < 5; i++) 
	{
        printf("Enter number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    for (i = 0; i < 5; i++) 
	{
        int num = numbers[i];
        factorial = 1;

        while (num > 0) {
            factorial *= num;  
            num--;           
        }

        printf("Factorial of %d is %d\n", numbers[i], factorial);
    }

}

