// Write a C Program to Print the Multiplication Table of N

#include<stdio.h>
main()
{
	int n,i;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	printf("Multiplication Table of %d ",n);
	
	for(i=1;i<=10;i++)
	{
		printf("\n%d * %d = %d",n,i,n*i);
	}
	
}


