// Write a program in C to extract a substring from a given string

#include <stdio.h>

#define MAX_LENGTH 100

extractSubstring(char *source, int start, int length, char *destination) 
{
    int i;
    for (i = 0; i < length && (start + i) < strlen(source); i++) 
	{
        destination[i] = source[start + i];
    }
    destination[i] = '\0';
}

main() 
{
    char str[MAX_LENGTH];
    char substring[MAX_LENGTH];
    int start, length;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    int strLength = strlen(str);
    if (strLength > 0 && str[strLength - 1] == '\n') 
	{
        str[strLength - 1] = '\0';
        strLength--; 
    }

    printf("Enter the starting index: ");
    scanf("%d", &start);
    printf("Enter the length of the substring: ");
    scanf("%d", &length);

    if (start < 0 || start >= strLength || length < 0) 
	{
        printf("Invalid starting index or length.\n");
        return 1;
    }

    extractSubstring(str, start, length, substring);
    printf("Extracted substring: \"%s\"\n", substring);

}

