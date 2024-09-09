#include<stdio.h>
main()
{
	float l,w,perimeter;
	printf("Enter Length : ");
	scanf("%f",&l);
	printf("\nEnter Width : ");
	scanf("%f",&w);
	
	perimeter = (l+w)*2;
	
	printf("Circumference of Rectangle formula : %f",perimeter);
}
