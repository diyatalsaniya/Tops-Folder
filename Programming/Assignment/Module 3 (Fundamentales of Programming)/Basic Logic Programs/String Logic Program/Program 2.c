// Write a program in C to separate individual characters from a string

#include <stdio.h>

#define MAX_LENGTH 100		// Define maximum length for the input string

main() 
{
	
    char str[MAX_LENGTH];
    int i;
    
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);		// Read a line of input (including spaces)
    
    printf("\nIndividual characters in the string:\n");
    // Iterate through each character in the string
    for (i = 0; str[i] != '\0'; i++) 
	{
		// Skip newline or carriage return characters
        if (str[i] == '\n' || str[i] == '\r') 
		{
            continue;
        }
        printf("%c\n", str[i]);
    }

}

