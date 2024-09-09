// Calculate the Sum of Natural Numbers Using the While Loop

#include<stdio.h>
main()
{
	int n, i=1, sum=0;
	
	printf("Enter Number : ");
	scanf("%d",&n);
	
	while(i<=n)
	{
		sum += i;	// Add the current value of i to the sum
		i++;	// Increment i to move to the next number
	}
	
	printf("Sum of Natural number is : %d",sum);
}
