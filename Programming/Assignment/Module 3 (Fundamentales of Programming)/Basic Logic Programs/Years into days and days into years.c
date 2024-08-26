#include <stdio.h>

main() 
{
    int years, days;
    float yearsFromDays;

    printf("Enter number of years: ");
    scanf("%d", &years);

    days = years * 365;

    yearsFromDays = days / 365.0;

    printf("Equivalent in days: %d\n", days);
    printf("Equivalent in years (from days): %.2f\n", yearsFromDays);
    
}
