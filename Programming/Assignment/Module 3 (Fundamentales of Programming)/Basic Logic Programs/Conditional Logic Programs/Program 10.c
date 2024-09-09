#include<stdio.h>
main()
{
	int num;
	printf("Enter Number : ");
	scanf("%d",&num);
	
	if(num>0)
	{
		printf("Number is Positive..");
	}
	else if(num==0)
	{
		printf("Number is 0");
	}
	else
	{
		printf("Number is Negative..");
	}
}
