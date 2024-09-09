#include<stdio.h>
main()
{
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
}
