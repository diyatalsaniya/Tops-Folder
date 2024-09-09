#include<stdio.h>
main()
{
	FILE* fptr;
	
	fptr = fopen("Test1.txt","r");
	
	char a[100];
	
	while(!feof(fptr)) // eof means end of the file
	
	{
		fgets(a,100,fptr);
	
		printf("%s",a);
	}
		
	fclose(fptr);
	
}
