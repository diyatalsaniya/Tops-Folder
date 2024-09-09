#include<iostream>
using namespace std;

class Myclass
{
	public: 
	
	int a,b;
	
	show()
	{
		cout<<"Enter A : ";
		cin>>a;
		cout<<"Enter B : ";
		cin>>b;
	}
	
	add()
	{
		cout<<"Addition is : "<<a+b<<endl;
	}
	
	sub()
	{
		cout<<"Substraction is : "<<a-b<<endl;
	}
	
	mul()
	{
		cout<<"Multiplication is : "<<a*b<<endl;
	}
};

main()
{
	Myclass obj;
	obj.show();
	obj.add();
	obj.sub();
	obj.mul();
}

