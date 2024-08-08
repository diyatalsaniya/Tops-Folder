#include<stdio.h>
main() 
{
	int n1, n2;
	printf("Enter Numer 1 : ");
	scanf("%d",&n1);
	printf("Enter Numer 2 : ");
	scanf("%d",&n2);
	
	//n1=20, n2=40
	      
	printf("Before swapping n1=%d n2=%d",n1,n2); 
	n1=n1+n2;  //n1=60
	n2=n1-n2;  //n2=20 
	n1=n1-n2;  //n1=40
	printf("\nAfter swapping n1=%d n2=%d",n1,n2);    
}
