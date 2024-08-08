#include<stdio.h>
main()
{
	int n, i=1, fac=1;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	while(i<=n)
	{
		fac = fac*i;
		i++;
	}
	printf("Factorial is : %d",fac);
}
