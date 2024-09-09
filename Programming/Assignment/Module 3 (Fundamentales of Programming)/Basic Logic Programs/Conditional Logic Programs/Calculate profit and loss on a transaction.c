#include <stdio.h>

main() 
{
    
	float cost_price, selling_price, profit_or_loss;

    printf("Enter the Cost Price: ");
    scanf("%f", &cost_price);

    printf("Enter the Selling Price: ");
    scanf("%f", &selling_price);

    profit_or_loss = selling_price - cost_price;

    if (profit_or_loss > 0) 
	{
        printf("You made a profit of %.2f\n", profit_or_loss);
    } 
	else if (profit_or_loss < 0) 
	{
        printf("You incurred a loss of %.2f\n", -profit_or_loss);
    } 
	else 
	{
        printf("No profit, no loss.\n");
    }

}

