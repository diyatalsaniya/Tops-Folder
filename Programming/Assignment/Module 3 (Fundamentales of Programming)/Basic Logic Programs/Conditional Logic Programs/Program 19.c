#include <stdio.h>

main() 
{
	
    int customer_id;
    char customer_name[50];
    float units_consumed, total_amount;

    printf("Enter Customer ID: ");
    scanf("%d", &customer_id);

    printf("Enter Customer Name: ");
    scanf("%s", customer_name);

    printf("Enter Units Consumed: ");
    scanf("%f", &units_consumed);

    if (units_consumed <= 350) 
	{
        total_amount = units_consumed * 1.20;
    } 
	else if (units_consumed < 600) 
	{
        total_amount = units_consumed * 1.50;
    } 
	else if (units_consumed < 800) 
	{
        total_amount = units_consumed * 1.80;
    } 
	else 
	{
        total_amount = units_consumed * 2.00;
    }

    printf("\nElectricity Bill:\n");
    printf("Customer ID    : %d\n", customer_id);
    printf("Customer Name  : %s\n", customer_name);
    printf("Units Consumed : %.2f\n", units_consumed);
    printf("Total Amount   : %.2f\n", total_amount);

}

