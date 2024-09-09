#include <stdio.h>

main() 
{
	
    int num = 1;
    int i, j;

    for (i = 1; i <= 5; i++) 
	{
        for (j = 1; j <= 10; j++) 
		{   
            printf("%02d ", num++);    // 02 for print 2 number like 01, 02, 03  
        }
        printf("\n");
    }

}

