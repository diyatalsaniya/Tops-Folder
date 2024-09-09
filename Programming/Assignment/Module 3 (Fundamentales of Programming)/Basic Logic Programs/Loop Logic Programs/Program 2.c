// WAP to accept 5 numbers from user and display all numbers

#include<stdio.h>
main()
{
	int n,i;
	
	// Loop to get and display numbers 5 times
	for(i=1;i<=5;i++)
	{
		printf("\nEnter Number %d : ", i);
		scanf("%d",&n);	
		
		printf("Number is : %d",n);		
	}
	
}


