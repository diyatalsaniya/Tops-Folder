#include<stdio.h>
main()
{
	int i,j,k;
	
	// Print the upper half of the diamond
	for(i=1;i<=5;i++)
	{
		for(j=1;j<=i;j++)
		{
			printf(" *");
		}
		printf("\n");
	}
	
	// Print the lower half of the diamond
	for(i=1;i<=4;i++)
	{
		for(j=4;j>=i;j--)
		{
			printf(" *");
		}
		printf("\n");
	}
}
