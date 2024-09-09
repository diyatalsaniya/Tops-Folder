#include<stdio.h>
main()
{

	int i,j;
	
	for(i=1;i<=5;i++)
	{
		char n = 'A';
		
		for(j=1;j<=i;j++)
		{
			printf(" %c",n);
			n++;	// Increment the character for the next print
		}
		printf("\n");
	}
}
