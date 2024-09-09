// Calculate 5 numbers from user and calculate number of even and odd using of while loop

#include<stdio.h>
main()
{
	int n, i=1, sum=0, ev=0, od=0;
	
	while(i<=5)
	{
		printf("\nEnter Number : ");
		scanf("%d",&n);
		
		i++;
		
		sum += n;	// Add the input number to the sum
		
		if(n%2==0)
		{
			printf("%d is Even",n);
			ev++;	// Increment even number counter
		}
		else
		{
			printf("%d is Odd",n);
			od++;	// Increment odd number counter
		}
	}
	printf("\nSum is : %d",sum);
	printf("\nCount of even number is : %d",ev);
	printf("\nCount of odd number is : %d",od);
}
