#include<stdio.h>
main()
{
	char a[10],b[10];
	int i, j, sum1=0, sum2=0;
	
	printf("Enter String 1 : ");
	gets(a);
	printf("Enter String 2 : ");
	gets(b);
	
	for(i=0;a[i]!='\0';i++)
	{
		sum1 = sum1 + a[i];
	}
	printf("\nSum of String 1 is : %d",sum1);
	
	for(j=0;b[j]!='\0';j++)
	{
		sum2 = sum2 + b[j];
	}
	printf("\nSum of String 2 is : %d",sum2);
	
	printf("\nValue is : %d",strcmp(a,b));
}
