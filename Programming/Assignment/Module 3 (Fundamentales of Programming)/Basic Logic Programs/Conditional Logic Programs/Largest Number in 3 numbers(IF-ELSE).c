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
	
	if(a>b)
	{
		if(a>c)
		{
			printf("Largest Number is : %d",a);
		}
		else
		{
			printf("Largest Number is : %d",c);
		}
	}
	else if(b>c)
	{
		if(b>c)
		{
			printf("Largest Number is : %d",b);
		}
		else
		{
			printf("Largest Number is : %d",c);
		}
	}
	else
	{
		printf("Largest Number is : %d",c);
	}
}
