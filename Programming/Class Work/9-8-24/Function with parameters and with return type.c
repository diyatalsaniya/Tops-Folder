#include<stdio.h>
fac(int n)
{
	int fac=1,i;
	
	for(i=1;i<=n;i++)
	{
		fac = fac*i;
	}
	printf("Factorial is : %d",fac);
	
}

main()
{
	int n;
	printf("Enter Number: ");
	scanf("%d",&n);
	
	fac(n);
	
}
