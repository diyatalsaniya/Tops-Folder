// Write a C++ Program display Student Mark sheet using Multiple inheritance

#include<iostream>
using namespace std;

class Student	// Parent Class
{
	public:
		string name;
		int rn;
		
		detail()
		{
			cout<<"Enter Name : ";
			cin>>name;
			cout<<"Enter Roll No : ";
			cin>>rn;
		}
		
		display()	// Show name and roll no
		{
			cout<<"Name : "<<name<<endl;
			cout<<"Roll No : "<<rn<<endl; 
		}
};

class Result	// Parent Class
{
	public:
		int c, java, eng, sql, total;
		float per;
		
		marks()
		{
			cout<<"Enter C Marks : "<<endl;
			cin>>c;
			cout<<"Enter Java Marks : "<<endl;
			cin>>java;
			cout<<"Enter English Marks : "<<endl;
			cin>>eng;
			cout<<"Enter SQL Marks : "<<endl;
			cin>>sql;
		
			total = c + java + eng + sql;	// Total of all subject
			per = total/4;	// Percentage of total
		
		}
		display_marks()
		{
			cout<<"C Marks : "<<c<<endl;
			cout<<"Java Marks : "<<java<<endl;
			cout<<"English Marks : "<<eng<<endl;
			cout<<"Sql Marks : "<<sql<<endl;
			
			cout<<"Total : "<<total<<endl;
			cout<<"Percentage : "<<per<<"%"<<endl;
		}
};

class Grade: public Student,public Result	// Child class
{
	public:
		grade()		// Fucntion for give grade by percentage
		{
			if(per>90)
			{
				cout<<"Destinction";
			}
			else if(per>70)
			{
				cout<<"First Class";
			}
			else if(per>50)
			{
				cout<<"Second Class";
			}
			else if(per>40)
			{
				cout<<"Lower Class";
			}
			else 
			{
				cout<<"Fail";
			}
		}
};

main()
{
	Grade obj;
	obj.detail();	// user enter name and roll no
	obj.marks();
	obj.display();
	obj.display_marks();
	obj.grade();
}
