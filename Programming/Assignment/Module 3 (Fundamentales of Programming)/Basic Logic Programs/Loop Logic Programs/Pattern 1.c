#include <stdio.h>

main() 
{
    
	int i, j, n = 5; 

    for (i = 1; i <= n; i++) // number of rows
	{
        for (j = 1; j <= i; j++) // number of columns
		{
            if (j % 2 == 1) // Check if the column number is odd
			{
                printf("1 ");	// odd
            } 
			else 
			{
                printf("0 ");	// even
            }
        }
        printf("\n");
    }

}
