// Write a program in C to separate individual characters from a string

#include <stdio.h>

#define MAX_LENGTH 100

main() 
{
	
    char str[MAX_LENGTH];
    int i;
    
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    
    printf("\nIndividual characters in the string:\n");
    for (i = 0; str[i] != '\0'; i++) 
	{
        if (str[i] == '\n' || str[i] == '\r') 
		{
            continue;
        }
        printf("%c\n", str[i]);
    }

}

