#include<stdio.h>
main()
{
	int a[5], b[5], sum=0;
	int i;
	
	for(i=0;i<5;i++)
	{
		printf("Enter Element1 : ");
		scanf("%d",&a[i]);
	}
	
	printf("\n*****************");
	
	for(i=0;i<5;i++)
	{
		printf("\nEnter Element2 : ");
		scanf("%d",&b[i]);
	}
	
	printf("\n*****************");
	
	for(i=0;i<5;i++)
	{
		printf("\nAddition is : %d",a[i]+b[i]);
	}
	
}
