#include<stdio.h>
struct Myarray
{
	int a[5];
	int i;
	
}s1;

main()
{
	
	for(s1.i=0;s1.i<5;s1.i++)
	{
		printf("Enter Number : ");
		scanf("%s",&s1.a[s1.i]);
	}
	
	for(s1.i=0;s1.i<5;s1.i++)
	{
		printf("\nNumber : %d",s1.a[s1.i]);
	}
	
	
	
	
}
