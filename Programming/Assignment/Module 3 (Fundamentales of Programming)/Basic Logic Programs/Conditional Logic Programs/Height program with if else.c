#include<stdio.h>
main()
{
	int height;
	printf("Enter Your Height In Centimeters: ");
	scanf("%d",&height);
	
	if(height<150)
	{
		printf("You are Short...");
	}
	else if(height>150 && height<220)
	{
		printf("You are Normal...");
	}
	else
	{
		printf("You are Long...");
	}
}
