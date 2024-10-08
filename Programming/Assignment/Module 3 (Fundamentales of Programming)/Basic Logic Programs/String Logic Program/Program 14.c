// Write a program in C to combine two strings manually

#include <stdio.h>

#define MAX_LENGTH 1000

// Function to concatenate str2 to the end of str1
combineStrings(char *str1, const char *str2) 
{
	// Move str1 pointer to the end of the existing string
    while (*str1) 
	{
        str1++;
    }
    
    // Copy characters from str2 to the end of str1
    while (*str2) 
	{
        *str1 = *str2;
        str1++;
        str2++;
    }
    
    *str1 = '\0';
}

main() 
{
    char str1[MAX_LENGTH];
    char str2[MAX_LENGTH];

    printf("Enter the first string: ");
    fgets(str1, sizeof(str1), stdin);
    
    size_t length1 = strlen(str1);
    if (length1 > 0 && str1[length1 - 1] == '\n') 
	{
        str1[length1 - 1] = '\0';
    }


    printf("Enter the second string: ");
    fgets(str2, sizeof(str2), stdin);
    
    // Remove the newline character from str2 if present
    size_t length2 = strlen(str2);
    if (length2 > 0 && str2[length2 - 1] == '\n') 
	{
        str2[length2 - 1] = '\0';
    }
    
    // Combine the two strings
    combineStrings(str1, str2);

    printf("Combined string: %s\n", str1);

}

