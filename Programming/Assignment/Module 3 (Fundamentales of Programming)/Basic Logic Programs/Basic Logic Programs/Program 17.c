#include<stdio.h>
main()
{
	float salary, premium;

    printf("Enter the person's salary: ");
    scanf("%f", &salary);
    
    premium = salary * 0.07;

    printf("Insurance premium: %.2f\n", premium);
}
