#include<stdio.h>
main()
{
	float fahrenheit, celsius;

    printf("Enter temperature in Fahrenheit: ");
    scanf("%f", &fahrenheit);

    celsius = (fahrenheit - 32) * 5 / 9;	// formula for celsius value 

    printf("Celsius of %.2f Fahrenheit is %.2f\n", fahrenheit, celsius);
    
}
