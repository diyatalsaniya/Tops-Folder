#include<stdio.h>
main()
{
	float radius,i,pi=3.14,area,cir;
	printf("Enter Number : ");
	scanf("%f",&radius);
	
	area = pi*radius*radius;	// area value
	cir = 2*pi*radius;	// circle value
	
	printf("\nArea of the circle : %f",area);
	printf("\nCircumference of the circle : %f",cir);
}
