#include<stdio.h>
main()
{
	int num;
	printf("Enter Number : ");
	scanf("%d", &num);
	
	if(num==0){
		printf("Not Even and Not Odd!!");
	}
	else if(num%2==0){
		printf("Even Num!!");
	}
	else{
		printf("Odd Num!!");
	}
}
