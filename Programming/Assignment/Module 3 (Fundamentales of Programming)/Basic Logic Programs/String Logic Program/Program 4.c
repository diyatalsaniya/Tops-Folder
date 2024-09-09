// Write a program in C to count the total number of words in a string

#include <stdio.h> 

#define MAX_LENGTH 100		// Define maximum length for the input string

main() 
{
	
    char str[MAX_LENGTH];
    int count = 0, i;
    int inWord = 0; 

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    
    // Remove the newline character if it is present at the end
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';		// Replace newline with null terminator
        length--;  
    }
    
    // Iterate through each character in the string
    for (i = 0; i < length; i++) 
	{
        if (isspace(str[i])) 
		{
			// If we encounter a space and were in a word, count the word
            if (inWord) 
			{
                count++;
                inWord = 0; 	// We are now outside a word
            }
        } 
		else 
		{
            if (!inWord) 
			{
                inWord = 1;
            }
        }
    }
    
    // If we end the string while still inside a word, count the last word
    if (inWord) 
	{
        count++;
    }

    printf("Total number of words: %d\n", count);

}

