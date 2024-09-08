// Write a program in C to count the total number of alphabets, digits and specialcharacters in a string.

#include <stdio.h>

#define MAX_LENGTH 100

main() 
{
	
    char str[MAX_LENGTH];
    int alphabets = 0, digits = 0, specialChars = 0, i;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    
    // Remove the newline character from the end of the input string if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';		// Replace newline with null terminator
        length--;  
    }
    
    // Count alphabets, digits, and special characters
    for (i = 0; i < length; i++) 
	{
        if (isalpha(str[i])) 
		{
            alphabets++;
        } 
		else if (isdigit(str[i])) 
		{
            digits++;
        } 
		else if (!isspace(str[i])) 
		{ 
            specialChars++;
        }
    }

    printf("Total number of alphabets: %d\n", alphabets);
    printf("Total number of digits: %d\n", digits);
    printf("Total number of special characters: %d\n", specialChars);

}

