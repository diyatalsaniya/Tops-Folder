// Write a program in C to count the total number of words in a string

#include <stdio.h> 

#define MAX_LENGTH 100

main() 
{
	
    char str[MAX_LENGTH];
    int count = 0, i;
    int inWord = 0; 

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') {
        str[length - 1] = '\0';
        length--;  
    }

    for (i = 0; i < length; i++) 
	{
        if (isspace(str[i])) 
		{
            if (inWord) 
			{
                count++;
                inWord = 0; 
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
    
    if (inWord) 
	{
        count++;
    }

    printf("Total number of words: %d\n", count);

}

