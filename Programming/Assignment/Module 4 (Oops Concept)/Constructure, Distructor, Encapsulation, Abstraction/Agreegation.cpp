// Write a C++ program to implement a class called Student that has private member variables for name, class, roll number, and marks. Include 
// member functions to calculate the grade based on the marks and display the student's information. Accept address from each student implement 
// using of aggregation

#include<iostream>
using namespace std;

class Address	// Parent class
{ 
	private:
		string city,state;
	public:
		Address() // constructor
		{
			cout<<"Enter the address : "<<endl;
			cin>>city;
			cin>>state;
		}
		
		display_add() // address function
		{
			cout<<endl<<"Address is :"<<city<<","<<state;
		}
};
class Student{
	private:
		string nm;
		int roll_no,marks;
		Address add; // Aggregation Student has an address.
	public:
		Student() // constructor
		{
			cout<<"Enter the name : ";
			cin>>nm;
			cout<<"Enter the roll number : ";
			cin>>roll_no;
			cout<<"Enter the marks : ";
			cin>>marks;
		}
		result() // function
		{
			if(marks>=90)
			{
				cout<<"A Grade";
			}
			else if(marks>=80)
			{
				cout<<"B Grade";
			}
			else if(marks>=60)
			{
				cout<<"C Grade";
			}
			else if(marks>=50)
			{
				cout<<"D Grade";
			}
			else if(marks>=33)
			{
				cout<<"E Grade";
			}
			else
			{
				cout<<"You are Fail!!";
			}
		}
		display()
		{
			cout<<endl<<endl<<"Name is : "<<nm<<endl;
			cout<<"Roll-no. is : "<<roll_no<<endl;
			cout<<"Marks is : "<<marks<<endl;
			cout<<"Grade is : ";
			result(); // student result function called.
			add.display_add(); // address class display function is called. 
		}
};

main()
{
	Student obj1; // student constructor is automatically called when object of the student class is created.
	obj1.display(); // student display function called.
}
