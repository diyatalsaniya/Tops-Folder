#include<stdio.h>
main()
{
	char a[5],b[5];
	
	printf("Enter String 1 : ");
	gets(a);
	printf("Enter String 2 : ");
	gets(b);
	
	printf("Final String is : %s",strcat(a,b));
}
