#include<stdio.h>
main()
{
	int i,j;
	
	for(i=1;i<=5;i++) // Row
	{
		for(j=1;j<=i;j++) // Colloum
		{
			printf(" * ");
		}
		printf("\n\n");
	}
}

