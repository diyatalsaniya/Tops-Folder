#include<stdio.h>
main()
{
	int a,b,c,min;
	printf("Enter Number 1 : ");
	scanf("%d",&a);
	printf("Enter Number 2 : ");
	scanf("%d",&b);
	printf("Enter Number 3 : ");
	scanf("%d",&c);
	
	min = (a<b) ? (a<c ? a:c) : (b<c ? b:c);
	
	printf("Minimum number is : %d",min);
}
