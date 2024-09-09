// WAP to find reverse of string using recursion

#include <stdio.h>

reverseString(char str[], int start, int end) 
{

    if (start >= end) 	// Base case: stop when start >= end
	{
        return;
    }
    
    // Swap characters
    char temp = str[start];
    str[start] = str[end];
    str[end] = temp;
    
    // Recursive call with updated indices
    reverseString(str, start + 1, end - 1);
}

main() 
{
	
    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);		// Read input string


    str[strcspn(str, "\n")] = '\0';		// Remove newline character

    int length = strlen(str);		// Get string length

    reverseString(str, 0, length - 1);		// Reverse the string

    printf("Reversed string: %s\n", str);

}

