#include<stdio.h>
main()
{
	float l,w,area;
	printf("Enter Length : ");
	scanf("%f",&l);
	printf("\nEnter Width : ");
	scanf("%f",&w);
	
	area = w*l;		// Calculate the area of the rectangle
	
	printf("Area of Rectangle Formula : %f",area);
}
