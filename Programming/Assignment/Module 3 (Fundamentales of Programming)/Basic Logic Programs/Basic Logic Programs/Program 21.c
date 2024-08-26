#include<stdio.h>
main()
{
	// Using 3rd Variable
	int n1, n2, temp;
	printf("Enter Numer 1 : ");
	scanf("%d",&n1);
	printf("Enter Numer 2 : ");
	scanf("%d",&n2);
	
	// n1=10, n2=20
	temp=n1; //temp=10, n1=blank
	n1=n2; //n1=20 , n2=blank
	n2=temp; //n2=temp , temp=blank
	
	printf("After swapping Number 1 : %d", n1);
	printf("\nAfter swapping Number 2 : %d", n2);
	
	
	// Without Using 3rd Variable
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
