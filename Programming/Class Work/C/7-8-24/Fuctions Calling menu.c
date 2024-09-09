#include<stdio.h>

fac()
{
	int n,i,fac=1;
	printf("Enter Number : ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		fac*=i;
	}
	printf("Factorial is : %d",fac);
}

add()
{
	int n1,n2;
	printf("\nEnter Number1 : ");
	scanf("%d",&n1);
	printf("\nEnter Number2 : ");
	scanf("%d",&n2);
	
	printf("Addition is : %d",n1+n2);
}

prime()
{
	int n,i,prime=0;
	printf("Enter Number : ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		if(n%i==0)
		{
			prime++;
		}
	}
	if(prime==2)
	{
		printf("%d is prime",n);
	}
	else
	{
		printf("%d is not prime",n);
	}
}

fibo()
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

main()
{
	while(1)
	{
		printf("\nPress 1 for Factorial Number");
		printf("\nPress 2 for Addition Number");
		printf("\nPress 3 for Prime Number");
		printf("\nPress 4 for Fibonaci Series ");
		printf("\nPress 5 for Exit");
		
		int ch;
		printf("\nEnter Choice : ");
		scanf("%d",&ch);
		
		if(ch==1)
		{
			fac(); 
		}
		else if(ch==2)
		{
			add();
		}
		else if(ch==3)
		{
			prime();
		}
		else if(ch==4)
		{
			fibo();
		}
		else if(ch==5)
		{
			printf("Thank You!!!");
			break;
		}
		else
		{
			printf("Invalid Choice!!!");
			break;
		}
	}
}
