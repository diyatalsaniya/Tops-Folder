#include<stdio.h>
main()
{
	char a[10],b[10];
	
	printf("Enter Name : ");
	gets(a);
	
	strcpy(b,a);
	
	printf("String b is : %s",b);
}
