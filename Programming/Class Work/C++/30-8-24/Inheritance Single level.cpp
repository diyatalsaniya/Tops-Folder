#include<iostream>
using namespace std;

class Parent
{
	public:
		hello()
		{
			cout<<"This is parent class"<<endl;
		}
		
};

class Child:public Parent  // : it's for make relation between two class 
{
	public:
		hello2()
		{
			cout<<"This is child class";
		}
};

main()
{
	Child obj;
	obj.hello();
	obj.hello2();
}
