#include<stdio.h>
main()
{
	FILE *fptr;
	
//	fptr=fopen("Test1.txt","w"); //"w" for create file

	fptr=fopen("Test1.txt","a"); //"a" for append file means add new content in exiting file
	
//	fprintf(fptr,"This is Write Method");

	fprintf(fptr,"\nThis is Append Method");
	
	fclose(fptr);
}
