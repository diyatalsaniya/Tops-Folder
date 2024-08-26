// WAP to take 10 no. Input from user find out below values 
// 	a. How many Even numbers are there 
//	b. How many odd numbers are there 
//	c. Sum of even numbers 
//	d. Sum of odd numbers

#include<stdio.h>
main()
{
	int i,n,ev=0,od=0,evsum=0,odsum=0;
	
//	while(i<=10)
//	{
//		printf("\nEnter Number %d : ",i);
//		scanf("%d",&n);
//		i++;
//	
//		if(n%2==0)
//		{
//			printf("%d is Even",n);
//			ev++;
//			evsum += n;
//		}
//		else
//		{
//			printf("%d is Odd",n);
//			od++;
//			odsum += n;
//		}
//		
//	}

	for(i=1;i<=10;i++)
	{
		printf("\nEnter Number %d : ",i);
		scanf("%d",&n);
	
		if(n%2==0)
		{
			printf("%d is Even",n);
			ev++;
			evsum += n;
		}
		
		else
		{
			printf("%d is Odd",n);
			od++;
			odsum += n;
		}
		
	}

		
	printf("\nCount of Even Numbers is : %d",ev);
	printf("\nCount of Odd Numbers is : %d",od);
	printf("\nCount of Even Numbers Sum is : %d",evsum);
	printf("\nCount of Odd Numbers Sum is : %d",odsum);
	
}
