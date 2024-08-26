#include <stdio.h>

main() 
{
	
    int week_number;

    printf("Enter the Week Number (1-7): ");
    scanf("%d", &week_number);

    switch(week_number) 
	{
        case 1:
            printf("Sunday\n");
            break;
        case 2:
            printf("Monday\n");
            break;
        case 3:
            printf("Tuesday\n");
            break;
        case 4:
            printf("Wednesday\n");
            break;
        case 5:
            printf("Thursday\n");
            break;
        case 6:
            printf("Friday\n");
            break;
        case 7:
            printf("Saturday\n");
            break;
        default:
            printf("Invalid Week Number! Please enter a number between 1 and 7.\n");
    }


}


// Output:

// Enter the Week Number (1-7): 3
// Tuesday
