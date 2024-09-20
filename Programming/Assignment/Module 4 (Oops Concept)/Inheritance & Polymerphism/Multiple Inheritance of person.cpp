// Create a class person having members name and age. Derive a class student having member percentage. Derive another class teacher having 
// member salary. Write necessary member function to initialize, read and write data. Write also Main function (Multiple Inheritance)

#include<iostream>
using namespace std;

class Person	// Parent class
{
	public:
		string name;
		int age;
		
		write1()
		{
			cout<<"Enter Name : ";
			cin>>name;
			cout<<"Enter Age : ";
			cin>>age;
		}
};

class Student	// Parent class
{
	public:
		float percentage;
		write2()
		{
			cout<<"Enter Percentage : ";
			cin>>percentage;
		}
};

class Teacher:public Person,public Student		// Child class
{
	public:
		int salary;
		write3()
		{
			cout<<"Enter Salary : ";
			cin>>salary;
		}
		
		display()	// Function for show all details
		{
			cout<<"Your Name : "<<name<<endl;
			cout<<"Age : "<<age<<endl;
			cout<<"Student Percentage : %"<<percentage<<endl;
			cout<<"Teacher Salary : "<<salary<<endl;
			
		}
};

main()
{
	Teacher obj;	// Make object of child class
	obj.write1();
	obj.write2();
	obj.write3();
	obj.display();		
}
