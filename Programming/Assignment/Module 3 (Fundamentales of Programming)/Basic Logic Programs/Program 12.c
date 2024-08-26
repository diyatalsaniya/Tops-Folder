#include<stdio.h>
main()
{
	int numStd, appleStd=5, totalApl;
	printf("Enter Number Of Student : ");
	scanf("%d",&numStd);
	
	totalApl = numStd*appleStd;
	
	printf("\nTotal number of apples required : %d",totalApl);
}
