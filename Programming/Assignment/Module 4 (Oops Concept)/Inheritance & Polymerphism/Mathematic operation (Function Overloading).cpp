// Write a program to Mathematic operation like Addition, Subtraction, Multiplication, Division Of two number using different parameters and 
// Function Overloading

#include<iostream>
using namespace std;

class Cal
{
	public:
		opr()
		{
			cout<<"*** Mathematic Operation ***"<<endl;
		}
		opr(int x, int y)	// over loading function with parameter integer
		{
			cout<<"Multiplication : "<<x*y<<endl;
			cout<<"Division : "<<x/y<<endl;
		}
		opr(float a, float b, float c)		// over loading function with paramater float
		{
			cout<<"Addition : "<<a+b+c<<endl;
			cout<<"Substraction : "<<a-b-c<<endl;
		}	
};

main()
{
	Cal obj;
	obj.opr();
	obj.opr(50,5);	// passing arguments for int
	obj.opr(60,20,30);	// passing arguments for float
}
