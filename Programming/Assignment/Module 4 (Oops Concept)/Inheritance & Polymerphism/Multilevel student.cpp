// Assume that the test results of a batch of students are stored in three different classes. Class Students are storing the roll number. Class 
// Test stores the marks obtained in two subjects and class result contains the total marks obtained in the test. The class result can inherit the 
// details of the marks obtained in the test and roll number of students. (Multilevel Inheritance)

#include<iostream>
using namespace std;

class Student		// Grand parent class
{
	public:
		int rn;
		
		rollno()
		{
			cout<<"Enter Roll No : ";
			cin>>rn;
		}
};

class Test: public Student		// Parent class
{
	public:
		int android, ios;
		
		marks()
		{
			cout<<"Enter Android Marks : ";
			cin>>android;
			cout<<"Enter Ios Marks : ";
			cin>>ios;
		}
};

class Result:public Test	// Child class
{
	public:
		int total;
		
		result()
		{
			total = android + ios;
		}
		
		display()
		{
			cout<<"Roll No : "<<rn<<endl;
			cout<<"Android Marks : "<<android<<endl;
			cout<<"Ios Marks : "<<ios<<endl;
			cout<<"Total : "<<total;
		}
};

main()
{
	Result obj;		// Create object of child class
	obj.rollno();
	obj.marks();
	obj.result();
	obj.display();		// This function is shows all the details
}
