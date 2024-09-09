// WAP to print factorial of given number

#include<stdio.h>
main()
{
	int n, i, fac=1;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		fac*=i;	// Multiply fac by the current value of i
	}
	printf("Factorial is : %d",fac);
}
