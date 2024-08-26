// Write a program in C to find the largest and smallest words in a string

#include <stdio.h>

#define MAX_LENGTH 1000
#define MAX_WORD_LENGTH 100

findLargestAndSmallestWords(const char *str, char *largest, char *smallest) 
{
	
    char temp[MAX_WORD_LENGTH];
    int largestLength = 0;
    int smallestLength = MAX_WORD_LENGTH;
    
    const char *p = str;
    while (*p) {
        while (*p && !isalpha(*p)) 
		{
            p++;
        }

        int length = 0;
        while (*p && isalpha(*p) && length < MAX_WORD_LENGTH - 1) 
		{
            temp[length++] = *p++;
        }
        temp[length] = '\0'; 

        if (length > largestLength) 
		{
            largestLength = length;
            strcpy(largest, temp);
        }

        if (length > 0 && length < smallestLength) 
		{
            smallestLength = length;
            strcpy(smallest, temp);
        }
    }
}

main() 
{
	
    char str[MAX_LENGTH];
    char largest[MAX_WORD_LENGTH];
    char smallest[MAX_WORD_LENGTH];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
    }

    findLargestAndSmallestWords(str, largest, smallest);

    if (strlen(largest) > 0) 
	{
        printf("Largest word: %s\n", largest);
    } 
	else 
	{
        printf("No words found.\n");
    }

    if (strlen(smallest) > 0) 
	{
        printf("Smallest word: %s\n", smallest);
    } 
	else 
	{
        printf("No words found.\n");
    }

}

