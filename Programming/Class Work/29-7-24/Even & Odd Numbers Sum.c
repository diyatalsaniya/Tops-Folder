#include<stdio.h>
main()
{
	int n, i=1, ev=0, od=0, evsum=0, odsum=0;
	
	while(i<=5)
	{
		printf("\nEnter Number : ");
		scanf("%d", &n);
		i++;
		
		if(n%2==0)
		{
			printf("%d is Even",n);
			ev++;
			evsum=evsum+n;
			
		}
		else
		{
			printf("%d is Odd",n);
			od++;
			odsum=odsum+n;
		}
		
	}
	
	printf("\nCount of even number is %d", ev);
		printf("\nCount of even number is %d", od);
		printf("\nSum of even number is %d", evsum);
		printf("\nSum of even number is %d", odsum);
}
