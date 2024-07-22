#include<stdio.h>
main()
{
	int n;
	printf("Enter Days: ");
	scanf("%d", &n);
	
	printf("Years are: %.3f", (float) n/365);
}
