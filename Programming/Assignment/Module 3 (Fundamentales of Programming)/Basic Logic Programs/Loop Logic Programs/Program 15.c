// Calculate sum of 10 numbers using of while loop

#include<stdio.h>
main()
{
	int n, i=1, sum=0;
	
	
	while(i<10)
	{
		
		printf("\nEnter Number : ",i);
		scanf("%d",&n);
		
		i++;	// Increment the loop counter
		
		sum += n;	// Add the input number to the sum
		
	}
	
	printf("Sum is : %d",sum);
	
}
