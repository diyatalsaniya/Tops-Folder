#include<stdio.h>
main()
{
	float w,l,h,area;
	printf("Enter Value1 : ");
	scanf("%f",&w);
	printf("\nEnter Value2 : ");
	scanf("%f",&l);
	printf("\nEnter Value3 : ");
	scanf("%f",&h);
	
	area = 2*(w*l+h*l+h*w);
	
	printf("\nArea of a rectangular prism formula : %f",area);
}
