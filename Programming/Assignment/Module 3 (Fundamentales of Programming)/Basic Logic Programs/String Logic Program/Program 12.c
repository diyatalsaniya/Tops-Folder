// Write a program in C to find the number of times a given word 'is' appears inthe given string

#include <stdio.h>

#define MAX_LENGTH 1000

countWordOccurrences(const char *str, const char *word) 
{
	
    int count = 0;
    const char *ptr = str;
    int wordLength = strlen(word);

    while ((ptr = strstr(ptr, word)) != NULL) 
	{
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

