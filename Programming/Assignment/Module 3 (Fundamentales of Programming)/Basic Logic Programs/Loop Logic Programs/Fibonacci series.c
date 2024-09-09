// WAP to print Fibonacci series up to given numbers

#include<stdio.h>
main()
{
	int n,i,n1=0, n2=1, n3;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	printf("\n%d",n1);
	printf("\n%d",n2);
	
	// Generate and print the remaining terms of the Fibonacci sequence
	for(i=3;i<=n;i++)
	{
		n3 = n1 + n2;
		printf("\n%d",n3);
		
		n1 = n2;	// Update n1 to the previous term
		n2 = n3;	// Update n2 to the current term
		
	}
		
}
