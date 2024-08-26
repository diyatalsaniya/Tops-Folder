#include <stdio.h>

main() 
{
	
    int num = 1;
    int i, j;

    for (i = 1; i <= 5; i++) 
	{
        for (j = 1; j <= 10; j++) 
		{   
            printf("%02d ", num++);      
        }
        printf("\n");
    }

}

