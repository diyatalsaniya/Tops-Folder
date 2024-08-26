// Calculate the Sum of Natural Numbers Using the While Loop

#include<stdio.h>
main()
{
	int n, i=1, sum=0;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	while(i<=n)
	{
		sum += i;
		i++;
	}
	
	printf("Sum of Natural number is : %d",sum);
}
