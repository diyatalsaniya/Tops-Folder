#include<stdio.h>
main()
{
	int temp;
	printf("Enter Temprature : ");
	scanf("%d",&temp);
	
	if(temp<0)
	{
		printf("It's Freezing Weather...");
	}
	else if(temp<10)
	{
		printf("It's Very Cold Weather...");
	}
	else if(temp<20)
	{
		printf("It's Cold Weather...");
	}
	else if(temp<30)
	{
		printf("It's Normal Temprature...");
	}
	else if(temp<40)
	{
		printf("It's Hot Temprature...");
	}
	else
	{
		printf("It's Very Hot Temprature...");
	}
}
