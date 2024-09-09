#include<stdio.h>
main()
{
	float expenses[5];
    float totalExpense = 0, averageExpense;
    int i;

    for (i = 0; i < 5; i++) {
        printf("Enter expense %d: ", i + 1);
        scanf("%f", &expenses[i]); 
        
        totalExpense += expenses[i]; 
    }
    
    averageExpense = totalExpense / 5;	// average of expense 
    
    printf("\nAverage Expense: %.2f\n", averageExpense);

}
