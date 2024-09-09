// Write a program in C to copy one string to another string.

#include<stdio.h>
main()
{
	char a[10],b[10];
	
	printf("Enter Name : ");
	gets(a);
	
	// Copy the content of string 'a' to string 'b'
	strcpy(b,a);
	
	
	// Display the copied string 'b'
	printf("String b is : %s",b);
}
