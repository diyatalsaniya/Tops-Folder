// Write a program in C to find the number of times a given word 'is' appears inthe given string

#include <stdio.h>

#define MAX_LENGTH 1000

// Function to count occurrences of a word in a string
countWordOccurrences(const char *str, const char *word) 
{
	
    int count = 0;
    const char *ptr = str;	// Pointer to traverse the string
    int wordLength = strlen(word);	// Length of the word to search for
    
    // Search for the word in the string
    while ((ptr = strstr(ptr, word)) != NULL) 
	{
		// Check if the found word is a standalone word
        if ((ptr == str || !isalpha(ptr[-1])) && !isalpha(ptr[wordLength])) 
		{
            count++;
        }
        ptr += wordLength; 
    }

    return count;
}

main() 
{
	
    char str[MAX_LENGTH];
    const char *word = "is";

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
    }

    int count = countWordOccurrences(str, word);
    printf("The word '%s' appears %d times in the given string.\n", word, count);

}

