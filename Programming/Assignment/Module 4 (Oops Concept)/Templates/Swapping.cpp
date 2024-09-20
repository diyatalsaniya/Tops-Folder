// 1. Write a program of to swap the two values using template

#include<iostream>
using namespace std;

template <typename Swap>		// Swap is a class name
Sawp myfun(Swap n1, Swap n2, Swap temp)	// myfun is a function name
{	
	cout<<"Enter Num 1 : ";
	cin>>n1;
	cout<<"Enter Num 2 : ";
	cin>>n2;
	
	temp=n1; //temp=10, n1=blank
	n1=n2; //n1=20 , n2=blank
	n2=temp; //n2=temp , temp=blank
	
	cout<<"After swapping num 1 : "<<n1<<endl;
	cout<<"After swapping num 2 : "<<n2;
	
}
