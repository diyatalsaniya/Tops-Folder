#include<stdio.h>
main()
{
	int minutes;
    int seconds, hours;

    printf("Enter Minutes: ");
    scanf("%d", &minutes);

    seconds = minutes * 60;
    hours = minutes / 60;

    printf("Equivalent in seconds: %d\n", seconds);
    printf("Equivalent in hours: %d\n", hours);

}
