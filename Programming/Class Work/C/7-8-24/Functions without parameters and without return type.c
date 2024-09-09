#include<stdio.h>

fac()
{
	int n,i,fac=1;
	printf("Enter Number : ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		fac*=i;
	}
	printf("Factorial is : %d",fac); // Line 5 to 12 is Function Definition
}

add()
{
	int n1,n2;
	printf("\nEnter Number1 : ");
	scanf("%d",&n1);
	printf("\nEnter Number2 : ");
	scanf("%d",&n2);
	
	printf("Addition is : %d",n1+n2);
}

main()
{
	fac(); // Function Calling
	add();
}
