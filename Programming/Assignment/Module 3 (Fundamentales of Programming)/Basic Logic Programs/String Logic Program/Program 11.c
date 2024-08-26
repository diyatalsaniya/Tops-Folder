// Write a program in C to read a sentence and replace lowercase characters withuppercase and vice versa.

#include <stdio.h>

#define MAX_LENGTH 1000

main() 
{
	
    char sentence[MAX_LENGTH];
    int i;

    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    int length = 0;
    while (sentence[length] != '\0') 
	{
        length++;
    }
    if (length > 0 && sentence[length - 1] == '\n') 
	{
        sentence[length - 1] = '\0';
    }

    for (i = 0; sentence[i] != '\0'; i++) 
	{
        if (islower(sentence[i])) 
		{
            sentence[i] = toupper(sentence[i]);
        } 
		else if (isupper(sentence[i])) 
		{
            sentence[i] = tolower(sentence[i]);
        }
    }
    printf("Modified sentence: %s\n", sentence);

}

