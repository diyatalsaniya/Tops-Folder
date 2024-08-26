// Write a program in C to compare two strings without using string libraryfunctions

#include<stdio.h>
main()
{
	char a[10],b[10];
	int i, j, sum=0, sum1=0;
	
	printf("Enter String 1 : ");
	gets(a);
	printf("Enter String 2 : ");
	gets(b);
	
	for(i=0;a[i]!='\0';i++)
	{
		sum = sum + a[i];
	}
	printf("\nSum of String 1 is : %d",sum);
	
	for(j=0;b[j]!='\0';j++)
	{
		sum1 = sum1 + b[j];
	}
	printf("\nSum of String 2 is : %d",sum1);
	
	printf("\nValue is : %d",strcmp(a,b));
}
