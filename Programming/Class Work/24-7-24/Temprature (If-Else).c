#include<stdio.h>
main()
{
	int temp;
	
	printf("Enter Temprature : ");
	scanf("%d",&temp);
	
	if(temp<10)
	{
		printf("Cold Weather!!");
	}
	else if(temp<20)
	{
		printf("Normal Weather!!");
	}
	else if(temp>30)
	{
		printf("Hot Weather!!");
	}
	else
	{
		printf("Freeze Weather!!");
	}
}
