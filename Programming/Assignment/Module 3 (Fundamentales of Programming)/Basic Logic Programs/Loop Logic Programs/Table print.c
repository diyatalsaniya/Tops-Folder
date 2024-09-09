#include<stdio.h>

main()
{
	int n,i;
	printf("Enter Number : ");
	scanf("%d",&n);
	
	// Loop to print the multiplication table of the number n
	for(i=1;i<=10;i++)
	{
		printf("%d * %d = %d\n", n, i, n*i);
	}
}
