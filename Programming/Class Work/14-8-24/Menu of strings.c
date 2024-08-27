#include<stdio.h>
length(char a[])
{
	int i,len=0;
	for(i=0;a[i]!='\0';i++)
	{
		len++;
	}
	printf("Length of string is : %d",len);
}
copy(char a[],char b[])
{
	int i;
	for(i=0;a[i]!=0;i++)
	{
		b[i]=a[i];
	}
	
	b[i]='\0';
	
	printf("Copy String is : %s",b);
}
merge(char a[], char b[])
{
	char i,j;
	for(i=0;a[i]!='\0';i++);
	
	for(j=0;b[j]!='\0';j++)
	{
		a[i]=b[j];
		i++;
	}
	
	a[i]='\0';
	
	
	printf("Merge String is : %s",a);
}

main()
{
	
	printf("\nEnter 1 for Length");
	printf("\nEnter 2 for Copy String");
	printf("\nEnter 3 for Merge String");
	printf("\nEnter 4 for Exit");
	
	int choice;
	printf("\nEnter Choice : ");
	scanf("%d",&choice);
	fflush(stdin);
	
	
	if(choice==1)
	{
		char a[10];
		printf("Enter String : ");
		gets(a);
		
		length(a);
	}
	else if (choice==2)
	{
		char a[10],b[10];
		printf("Enter String : ");
		gets(a);
		fflush(stdin);
		copy(a,b);
	}
	else if(choice==3)
	{
		char a[10],b[10];
		printf("Enter String 1 : ");
		gets(a);
		printf("Enter String 2 : ");
		gets(b);
		fflush(stdin);
		merge(a,b);
	}
	else if (choice==4)
	{
		printf("Thank You!!!");
	}
	else
	{
		printf("Invalid Choice!!!");
	}
	
}







