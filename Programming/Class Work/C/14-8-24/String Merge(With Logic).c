#include<stdio.h>
main()
{
	char a[5],b[5],i,j;
	
	
	printf("Enter String 1 : ");
	gets(a);
	printf("Enter String 2 : ");
	gets(b);
	
	for(i=0;a[i]!='\0';i++);
	
	for(j=0;b[j]!='\0';j++)
	{
		a[i]=b[j];
		i++;
	}
	
	a[i]='\0';
	
	
	printf("Merge String is : %s",a);
	
}
