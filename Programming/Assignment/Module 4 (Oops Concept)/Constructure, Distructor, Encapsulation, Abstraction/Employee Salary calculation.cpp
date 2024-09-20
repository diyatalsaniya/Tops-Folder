// Write a C++ program to implement a class called Employee that has private member variables for name, employee ID, and salary. Include member 
// functions to calculate and set salary based on employee performance. Using of constructor

#include<iostream>
using namespace std;

class Employee	// main function
{
	private:
		string name;
		int emp_id, sal, sal2, sal3, sal4, rat;
		
	public:
		Employee()	// constructor
		{
			cout<<"Enter Name : "<<endl;
			cin>>name;
			cout<<"Enter Employee Id : "<<endl;
			cin>>emp_id;
			cout<<"Enter Salary : ";
			cin>>sal;
		}
		
		calculate()
		{
			cout<<"Enter rating from 1 to 10 for employee : "<<endl;	// take rating for increse salary
			cin>>rat;
			
			if(rat>=1 && rat<=3)	// Condition for increment salary
			{
				cout<<"Your increment is 2000!!"<<endl;
				sal = sal + 2000;
				cout<<"Now your salary is : "<<sal;
			}
			else if(rat>=4 && rat<=6)
			{
				cout<<"Your increment is 4000!!"<<endl;
				sal2 = sal + 4000;
				cout<<"Now your salary is : "<<sal2;
			}
			else if(rat>=7 && rat<=9)
			{
				cout<<"Your increment is 5000!!"<<endl;
				sal3 = sal + 5000;
				cout<<"Now your salary is : "<<sal3;
			}
			else if(rat==10)
			{
				cout<<"Your increment is 6000!!"<<endl;
				sal4 = sal + 6000;
				cout<<"Now your salary is : "<<sal4;
			}
			else 
			{
				cout<<"Invalid Rating!!";
			}
		}
};

main()
{
	Employee obj;
	obj.calculate();	// call function
}
