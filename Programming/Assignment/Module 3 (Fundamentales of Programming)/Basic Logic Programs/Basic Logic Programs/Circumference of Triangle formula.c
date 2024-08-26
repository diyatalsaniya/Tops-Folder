#include<stdio.h>
main()
{
	float a,b,c,triangle;
	printf("Enter Value1 : ");
	scanf("%f",&a);
	printf("\nEnter Value2 : ");
	scanf("%f",&b);
	printf("\nEnter Value3 : ");
	scanf("%f",&c);
	
	triangle = a+b+c;
	
	printf("Circumference of Triangle formula : %f",triangle);
}
