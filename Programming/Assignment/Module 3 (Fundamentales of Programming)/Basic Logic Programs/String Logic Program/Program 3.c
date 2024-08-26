// Write a program in C to print individual characters of a string in reverse order

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100

main() 
{
	
    char str[MAX_LENGTH];
    int length, i;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
	{
        str[length - 1] = '\0';
        length--;  
    }

    printf("\nIndividual characters in reverse order:\n");
    for (i = length - 1; i >= 0; i--) 
	{
        printf("%c\n", str[i]);
    }

}

