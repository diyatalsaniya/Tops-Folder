#include<stdio.h>
main()
{
	float principal, rate, time, compoundInterest, amount;
    int n,i;

    // Input principal, rate, time, and number of times interest applied per year
    printf("Enter the principal amount: ");
    scanf("%f", &principal);

    printf("Enter the annual interest rate (in percentage): ");
    scanf("%f", &rate);

    printf("Enter the time period (in years): ");
    scanf("%f", &time);

    printf("Enter the number of times interest is compounded per year: ");
    scanf("%d", &n);

    // Convert rate from percentage to decimal
    rate = rate / 100;

    // Calculate the compound interest
    amount = principal;
    for (i = 0; i < n * time; i++) 
	{
        amount = amount + (amount * rate / n);
    }

    // Print the compound interest
    printf("\nCompound interest: %.2f\n", compoundInterest);
}
