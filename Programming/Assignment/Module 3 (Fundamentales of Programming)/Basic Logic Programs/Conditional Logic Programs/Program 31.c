#include <stdio.h>

main() 
{
	
    int month;
    int days;

    printf("Enter the Month Number (1-12): ");
    scanf("%d", &month);


    switch(month) 
	{
        case 1:  // January
        case 3:  // March
        case 5:  // May
        case 7:  // July
        case 8:  // August
        case 10: // October
        case 12: // December
            days = 31;
            break;
        case 4:  // April
        case 6:  // June
        case 9:  // September
        case 11: // November
            days = 30;
            break;
        case 2:  // February
            days = 28; // Normally 28 days, leap year logic not included
            break;
        default:
            printf("Invalid Month Number!\n");
            return 1; // Exit the program for an invalid month
    }

    // Display the number of days
    printf("Number of Days in Month %d: %d\n", month, days);


}

