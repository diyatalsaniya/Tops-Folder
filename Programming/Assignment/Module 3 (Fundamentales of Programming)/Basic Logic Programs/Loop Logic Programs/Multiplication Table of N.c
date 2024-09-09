// Write a C Program to Print the Multiplication Table of N

#include<stdio.h>
main()
{
	int n,i;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	printf("Multiplication Table of %d ",n);
	
	// Loop to print the multiplication table up to 10
	for(i=1;i<=10;i++)
	{
		printf("\n%d * %d = %d",n,i,n*i);
	}
	
}


