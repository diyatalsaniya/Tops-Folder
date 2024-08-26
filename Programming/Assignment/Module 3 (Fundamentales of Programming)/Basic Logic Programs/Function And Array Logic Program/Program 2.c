// WAP of Addition, Subtraction, Multiplication and Division using Switchcase.(Must Be Menu Driven)

#include <stdio.h>

main() 
{
	
    int choice;
    float num1, num2, result;

    while (1) 
	{
        printf("Menu:\n");
        printf("1. Addition\n");
        printf("2. Subtraction\n");
        printf("3. Multiplication\n");
        printf("4. Division\n");
        printf("5. Exit\n");
        printf("Enter your choice (1-5): ");
        scanf("%d", &choice);

        if (choice == 5) 
		{
            printf("Exiting...\n");
            break;
        }

        if (choice >= 1 && choice <= 4) 
		{
            printf("Enter the first number: ");
            scanf("%f", &num1);
            printf("Enter the second number: ");
            scanf("%f", &num2);
        }

        switch (choice) 
		{
            case 1: 
                result = num1 + num2;
                printf("Result: %.2f\n", result);
                break;
                
            case 2: 
                result = num1 - num2;
                printf("Result: %.2f\n", result);
                break;
                
            case 3: 
                result = num1 * num2;
                printf("Result: %.2f\n", result);
                break;
                
            case 4: 
                if (num2 != 0) 
				{
                    result = num1 / num2;
                    printf("Result: %.2f\n", result);
                } 
				else 
				{
                    printf("Error: Division by zero is not allowed.\n");
                }
                break;
                
            default:
                printf("Invalid choice. Please enter a number between 1 and 5.\n");
                break;
        }
    }

}

