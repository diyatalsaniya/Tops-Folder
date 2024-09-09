#include<stdio.h>

main()
{
	char n = 'A';	// Initialize character 'n' to 'A'
	int i, j;
	
	for(i=1; i<=5; i++)
	{
		for(j=1; j<=i; j++)
		{
			printf("%c ",n);
			n++;	// Increment the character to the next letter
		}
		printf("\n");
	}
}



