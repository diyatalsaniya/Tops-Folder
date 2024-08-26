#include<stdio.h>
main()
{
	int num1,num2,choice,add,sub,mul,div,mod;
	printf("Enter Number1 : ");
	scanf("%d",&num1);
	printf("Enter Number2 : ");
	scanf("%d",&num2);
	
	printf("Enter 1 for Addition");
	printf("\nEnter 2 for Addition");
	printf("\nEnter 3 for Addition");
	printf("\nEnter 4 for Addition");
	printf("\nEnter 5 for Addition");
	printf("\nEnter 6 for Addition");
	
	printf("\n\nEnter Choice : ");
	scanf("%d",&choice);
	
	switch(choice)
	{
		case 1:
			add=num1+num2;
			printf("Addition of %d and %d is : %d",num1,num2,add);
			break;
			
		case 2:
			add=num1-num2;
			printf("Substraction of %d and %d is : %d",num1,num2,add);
			break;
			
		case 3:
			add=num1*num2;
			printf("Multiplication of %d and %d is : %d",num1,num2,add);
			break;
			
		case 4:
			add=num1/num2;
			printf("Division of %d and %d is : %d",num1,num2,add);
			break;
			
		case 5:
			add=num1%num2;
			printf("Modulo of %d and %d is : %d",num1,num2,add);
			break;
			
		case 6:
			printf("Thank You!!!");
			break;
		
		default:
			{
				printf("Invalid Choice!!!");
			}

	}
}
