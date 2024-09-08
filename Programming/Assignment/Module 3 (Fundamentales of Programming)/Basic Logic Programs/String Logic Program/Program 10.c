// Write a program in C to extract a substring from a given string

#include <stdio.h>

#define MAX_LENGTH 100

extractSubstring(char *source, int start, int length, char *destination) 
{
    int i;
    // Copy the substring to the destination
    for (i = 0; i < length && (start + i) < strlen(source); i++) 
	{
        destination[i] = source[start + i];
    }
    destination[i] = '\0';	// Null-terminate the destination string
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
        str[strLength - 1] = '\0';	// Replace newline with null terminator
        strLength--; 
    }

    printf("Enter the starting index: ");
    scanf("%d", &start);
    printf("Enter the length of the substring: ");
    scanf("%d", &length);
    
    // Validate starting index and length
    if (start < 0 || start >= strLength || length < 0) 
	{
        printf("Invalid starting index or length.\n");
        return 1;	// Exit with error code
    }
    
    // Extract the substring and display it
    extractSubstring(str, start, length, substring);
    printf("Extracted substring: \"%s\"\n", substring);

}

