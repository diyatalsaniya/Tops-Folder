#include<stdio.h>

struct Mystructure
{
	int a,b;
}s1;

main()
{
//	struct Mystructure s1;
	
	printf("Enter Number 1 : ");
	scanf("%d",&s1.a);
	printf("Enter Number 2 : ");
	scanf("%d",&s1.b);
	
	printf("Number 1 : %d",s1.a);
	printf("\nNumber 2 : %d",s1.b);
}
