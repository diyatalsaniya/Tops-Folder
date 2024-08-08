#include<stdio.h>
main()
{
	int n;
	
	printf("Enter Age : ");
	scanf("%d",&n);
	
	if(n>100){
		printf("Invalid Age!!");
	}
	
	else if(n>=18){
		printf("Eligible!!");
	}
	
	else{
		printf("Not Eligible!!");
	}
}
