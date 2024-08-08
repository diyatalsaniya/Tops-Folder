#include<stdio.h>
main()
{
	int i,n;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		if(i==n/2)
	{
		break;
	}
	
	printf("%d\n",i);
}
}
