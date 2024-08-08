#include<stdio.h>

fac(int n, int i, int fac) // Parameters
{
	for(i=1;i<=n;i++)
	{
		fac*=i;
	}
	printf("Factorial is : %d",fac);
}

add(int n1, int n2)
{
	
	printf("Addition is : %d",n1+n2);
}


main()
{
	int n;
	printf("Enter Number : ");
	scanf("%d",&n);
	fac(n,1,1); // Arguments
	
	int n1,n2;
	printf("\nEnter Number1 : ");
	scanf("%d",&n1);
	printf("\nEnter Number2 : ");
	scanf("%d",&n2);
	add(n1,n2); // Argumnets
	
}
