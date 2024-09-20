// Write a C++ Program to show access to Private Public and Protected using Inheritance.

#include<iostream>
using namespace std;

class Parent
{
	
	private:		// Private access is for no one
		int a,b;
		
	public:		// Public access is for all
		show()
		{
			cout<<"Enter the value of a : ";
			cin>>a;
			cout<<"Enter the value of b : ";
			cin>>b;
		}
		add()
		{
			cout<<"Addition is : "<<a+b<<endl;
		}
		sub()
		{
			cout<<"Subtraction is : "<<a-b<<endl;
		}
		protected:		// Access just for them who have permission
		getA()
		{
			return a;
		}
		getB()
		{
			return b;
		}
		
};
class Child:public Parent	// Relation between parent and child class bt single level inhertance
{
	public:
	int n,m;
		mul()
		{
			n=getA();
			m=getB();
			cout<<"Multiple is : "<<n*m;	
		}
};
main()
{
	Child obj;
	obj.show();
	obj.add();
	obj.sub();
	obj.mul();
}
