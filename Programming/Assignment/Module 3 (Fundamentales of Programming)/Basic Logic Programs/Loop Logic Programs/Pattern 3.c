#include<stdio.h>

main()
{
	int i,j,k;
	
	for(i=1;i<=5;i++)
	{
		// loop for print space
		for(k=1;k<=5-i;k++)	
		{
			printf(" ");
		}
		
		// Print the first set of stars
		for(j=1;j<=i;j++)
		{
			printf("*");
		}
		
		// Print the second set of stars
		for(j=2;j<=i;j++)
		{
			printf("*");
		}
		
		printf("\n");
		}
		
}
