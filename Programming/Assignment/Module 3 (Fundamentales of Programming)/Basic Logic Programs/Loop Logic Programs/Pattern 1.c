#include <stdio.h>

main() 
{
    
	int i, j, n = 5; // number of rows

    for (i = 1; i <= n; i++) 
	{
        for (j = 1; j <= i; j++) 
		{
            if (j % 2 == 1) 
			{
                printf("1 ");
            } 
			else 
			{
                printf("0 ");
            }
        }
        printf("\n");
    }

}
