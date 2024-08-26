// Write a program in C to count the total number of vowels or consonants in a string.

#include <stdio.h>

#define MAX_LENGTH 100

main() 
{
	
    char str[MAX_LENGTH];
    int vowels = 0, consonants = 0;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
        length--; 
    }

    for (int i = 0; i < length; i++) 
	{
        char ch = tolower(str[i]); 
        if (isalpha(ch)) 
		{
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') 
			{
                vowels++;
            } 
			else 
			{
                consonants++;
            }
        }
    }

    printf("Total number of vowels: %d\n", vowels);
    printf("Total number of consonants: %d\n", consonants);

}

