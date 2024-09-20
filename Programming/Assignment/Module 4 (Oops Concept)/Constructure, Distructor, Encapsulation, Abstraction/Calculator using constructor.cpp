#include<iostream>
using namespace std;

class Cal
{
	public:
		int add, sub, mul, div, num1, num2;
		
		Cal()	// Constructor
		{		
			cout<<"Enter number 1 : ";
			cin>>num1;
			cout<<"Enter number 2 : ";
			cin>>num2;			
		}
		
		perform()
		{
			add = num1 + num2;
			sub = num1 - num2;
			mul = num1 * num2;
			div = num1 / num2;
		}		
		
		~Cal()	// Distructor 
		{
			cout<<"Addition is : "<<add<<endl;
			cout<<"Substraction is : "<<sub<<endl;
			cout<<"Multiplication is : "<<mul<<endl;
			cout<<"Division is : "<<div;
		}
		
};

main()
{
	Cal obj;
	obj.perform();
}
