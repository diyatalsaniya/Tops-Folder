// Accept 5 names from user at run time.

#include <stdio.h>

main() 
{
	
    char names[5][50];
    
    int i;
    
    // Loop to input 5 names from the user
    for (i = 0; i < 5; i++) 
	{
        printf("Enter name %d: ", i + 1);
        scanf("%s", names[i]); 
    }

    printf("\nThe names you entered are:\n");
    
    // Loop to display the 5 names entered
    for (i = 0; i < 5; i++) 
	{
        printf("Name %d: %s\n", i + 1, names[i]);
    }

}

