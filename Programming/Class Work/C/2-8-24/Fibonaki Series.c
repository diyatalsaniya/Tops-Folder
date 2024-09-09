#include<stdio.h>
main()
{
	int n,n1=0,n2=1,i;
	
	printf("Enter Terms : ");
	scanf("%d",&n);
	printf("%d",n1);
	printf("\n%d",n2);
	
	for(i=3;i<=n;i++)
	{
		int n3 = n1 + n2;
		printf("\n%d",n3);
		
		n1 = n2;
		n2 = n3;
	}	
}

// Example : Enter number : 10 --> Sum is 0 1 is already printed now start 0 1 1 = 1+1 = 2
//																		   0 1 1 2 = 2 + 1 = 3
//																		   0 1 1 2 3 = 3 + 2 = 5
//																		   0 1 1 2 3 5 = 5 + 3 = 8
//																		   ......
																		   
																		   
																		   
																		   
