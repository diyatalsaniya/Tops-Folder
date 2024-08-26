#include<stdio.h>
main()
{
    float principal, rate, time, compound_interest;

    printf("Enter the principal amount: ");
    scanf("%f", &principal);

    printf("Enter the annual interest rate (in percentage): ");
    scanf("%f", &rate);

    printf("Enter the time period (in years): ");
    scanf("%f", &time);

    rate = rate / 100; // convert percentage to decimal

    compound_interest = principal * pow((1 + rate), time);

    printf("\nCompound interest: %.2f\n", compound_interest - principal);
}
