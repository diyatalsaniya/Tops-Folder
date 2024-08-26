// WAP to print factorial of given number

#include<stdio.h>
main()
{
	int n, i, fac;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		fac*=i;
	}
	printf("Factorial is : %d",fac);
}
