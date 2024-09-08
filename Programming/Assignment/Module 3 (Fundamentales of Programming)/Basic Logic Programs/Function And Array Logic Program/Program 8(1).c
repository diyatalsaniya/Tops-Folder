// WAP to reverse a string and check that the string is palindrome or notWrite a program of structure employee that provides the following
//		a. information -print and display empno, empname, addressandage
//		b. Write a program of structure for five employee that provides the following information -print and displayempno, empname, address andage

#include <stdio.h>

reverseString(char str[]) 
{
    int len = strlen(str);		// Get the length of the string
    int i;
    for (i = 0; i < len / 2; i++) 
	{
        char temp = str[i];		// Swap characters from both ends
        str[i] = str[len - i - 1];
        str[len - i - 1] = temp;
    }
}

isPalindrome(char str[]) 
{
    int len = strlen(str);
    int i;
    for (i = 0; i < len / 2; i++) 
	{
        if (tolower(str[i]) != tolower(str[len - i - 1])) 	// Compare characters case-insensitively
		{
            return 0; 
        }
    }
    return 1; 
}

main() 
{
	
    char str[100];

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    str[strcspn(str, "\n")] = '\0'; 

    char reversed[100];
    strcpy(reversed, str); 	// Copy the original string to another array
    reverseString(reversed);	// Reverse the copied string

    printf("Reversed string: %s\n", reversed);

    if (isPalindrome(str)) 
	{
        printf("The string is a palindrome.\n");
    } 
	else 
	{
        printf("The string is not a palindrome.\n");
    }

}

