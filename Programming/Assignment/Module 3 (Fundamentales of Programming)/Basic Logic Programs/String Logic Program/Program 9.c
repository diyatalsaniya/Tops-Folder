// Write a program in C to find the maximum number of characters in a string.

#include <stdio.h>

#define MAX_LENGTH 100
#define ASCII_SIZE 256

main() 
{
	
    char str[MAX_LENGTH];
    int frequency[ASCII_SIZE] = {0}; 
    int maxCount = 0;
    char maxChar;
    int i;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
        length--; 
    }

    for (i = 0; i < length; i++) 
	{
        if (str[i] != ' ') 
		{ 
            frequency[(unsigned char)str[i]]++;
        }
    }

    for (i = 0; i < ASCII_SIZE; i++) 
	{
        if (frequency[i] > maxCount) 
		{
            maxCount = frequency[i];
            maxChar = i;
        }
    }

    if (maxCount > 0) 
	{
        printf("Character with maximum occurrences: '%c'\n", maxChar);
        printf("Number of occurrences: %d\n", maxCount);
    } 
	else 
	{
        printf("No characters found.\n");
    }

}

