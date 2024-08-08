#include<stdio.h>
main()
{
	int n,i;
	printf("Enter Number : ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i=i+2)
	{
		printf("\n%d",i);
	}
}
