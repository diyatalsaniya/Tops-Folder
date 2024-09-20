// Write a C++ program to create a class called Person that has private member variables for name, age and country. Implement member functions to
// set and get the values of these variables.

#include<iostream>
using namespace std;

class Person
{
	private:	// This is private access specifier
		string name, country;
		int age;
		
	public:	// This is public access specifier
		get()
		{
			cout<<"Enter name : ";
			cin>>name;
			cout<<"Enter Country : ";
			cin>>country;
			cout<<"Enter Age : ";
			cin>>age;
		}
		
		set()
		{
			cout<<"Name is : "<<name<<endl;
			cout<<"Country is : "<<country<<endl;
			cout<<"Age is : "<<age;
		}
		
		
};

main()
{
	Person obj;
	obj.get();
	obj.set();
}
