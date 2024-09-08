// Write a program in C to print individual characters of a string in reverse order

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100		// Define maximum length for the input string

main() 
{
	
    char str[MAX_LENGTH];
    int length, i;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    
    // Get the length of the string
    length = strlen(str);
    
    // Remove the newline character if it is present at the end
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';		// Replace newline with null terminator
        length--;  
    }

    printf("\nIndividual characters in reverse order:\n");
    
    // Iterate through the string in reverse order
    for (i = length - 1; i >= 0; i--) 
	{
        printf("%c\n", str[i]);
    }

}

