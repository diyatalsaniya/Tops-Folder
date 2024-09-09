#include<stdio.h>
main()
{
	int num;
	printf("Enter Number : ");
	scanf("%d",&num);
	
	(num%2==0)?printf("It's Even Number"):printf("It's Odd Number");
}
