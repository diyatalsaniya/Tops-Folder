// Write a program in C to remove characters from a string except

#include <stdio.h>

#define MAX_LENGTH 1000

isAllowed(char c, const char *allowedChars) 
{
    while (*allowedChars) 
	{
        if (c == *allowedChars) 
		{
            return true;
        }
        allowedChars++;
    }
    return false;
}

filterString(char *str, const char *allowedChars) 
{
    char result[MAX_LENGTH];
    int j = 0, i;

    for (i = 0; str[i] != '\0'; i++) 
	{
        if (isAllowed(str[i], allowedChars)) 
		{
            result[j++] = str[i];
        }
    }
    result[j] = '\0'; 

    strcpy(str, result);
}

main() 
{
	
    char str[MAX_LENGTH];
    const char *allowedChars = "aeiouAEIOU"; 

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
    }

    filterString(str, allowedChars);

    printf("Filtered string: %s\n", str);

}

