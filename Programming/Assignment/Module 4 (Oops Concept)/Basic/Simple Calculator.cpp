#include<iostream>
using namespace std;

class Cal
{
	public:
		int a, b;
		show()
		{
			// Function to take input
			cout<<"Enter First Number : "<<endl;
			cin>>a;
			cout<<"Enter Second Number : "<<endl;
			cin>>b;
		}
		
		add()	
		{
			cout<<"Addition is : "<<a + b<<endl;
		}
		
		sub()	
		{
			cout<<"Substraction is : "<<a - b<<endl;
		}
		
		mul()	
		{
			cout<<"Multiplication is : "<<a * b<<endl;
		}
		
		div()	
		{
			cout<<"Division is : "<<a / b<<endl;
		}
};

main()
{
	Cal obj;	// Create an object of class Cal
	obj.show();		// Call the show function to input values 
	obj.add();
	obj.sub();
	obj.mul();
	obj.div();
}
