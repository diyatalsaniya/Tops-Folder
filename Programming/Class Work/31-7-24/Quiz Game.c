#include<stdio.h>
main()
{
	char n,n1;
	int choice;
	printf("\n *** Welcome To the game ***");
	while(1) //Infinite Loop
	{
		printf("\n Press 1 for quiz game");
		printf("\n Press 2 for exit");
		
		fflush(stdin); // Buffer Generation Stop
		
		printf("\n Enter Choice : ");
		scanf("%d",&choice);
		if(choice==1)
		{
			
			fflush(stdin);
			printf(" Enter Name : ");
			scanf("%c",&n);
			
			printf("*** %c Welcome to the game *** ",n);
			
			printf("\n Question 1: Who is Prime Minister of India?");
			printf("\n A : Narendra Modi");
			printf("\n B : Amit Shah");
			printf("\n C : Sardar Patel");
			printf("\n D : Atal Kalam");
			
			fflush(stdin);
			
			printf("\n Enter Answer : ");
			scanf("%c",&n1);
			
			if(n1 == 'A' || n1 == 'a')
			{
				printf("You are Win!!!");
			}
			else
			{
				printf("Wrong Answer!!!");
				break;
			}
		}
		else if (choice==2)
		{
			printf("Thank You!!");
			break;
		}
		else
		{
			printf("Invalid Choice!!");
			break;
		}
	}
}
