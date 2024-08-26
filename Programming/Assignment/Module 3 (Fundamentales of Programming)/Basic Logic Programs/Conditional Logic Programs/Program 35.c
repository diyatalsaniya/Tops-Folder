#include <stdio.h>

main() 
{
	
    int month_number, year, days;


    printf("Enter the Month Number (1-12): ");
    scanf("%d", &month_number);

    switch(month_number) 
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

            printf("Enter the Year: ");
            scanf("%d", &year);
            if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
                days = 29;  // Leap year
            } else {
                days = 28;  // Non-leap year
            }
            break;
        default:
            printf("Invalid Month Number! Please enter a number between 1 and 12.\n");
            return 1;  // Exit the program for an invalid month
    }


    printf("Number of Days in Month %d: %d\n", month_number, days);


}

