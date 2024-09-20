// Assume a class cricketer is declared. Declare a derived class batsman from cricketer. Data member of batsman. Total runs, Average runs and 
// best performance. Member functions input data, calculate average runs, Displaydata. (Single Inheritance)

#include<iostream>
using namespace std;

class Cricketer		// parent class
{ 
	public:
		int age;
		string nm;
		
		data()
		{
			cout<<"Enter the name : ";
			cin>>nm;
			cout<<"Enter the age : ";
			cin>>age;
		}
};
class Batsman:public Cricketer // child class(derived class)
{
	public:
		int tl_runs,avg_runs,match,bst_pfm;
		
		details()
		{
			cout<<"Enter the total runs : ";
			cin>>tl_runs;
			cout<<"Enter the total matches : ";
			cin>>match;
			cout<<"Enter the total best performance : ";
			cin>>bst_pfm;
			
			avg_runs=tl_runs/match;
		}
		
		display()
		{
			cout<<"Name is : "<<nm<<endl;
			cout<<"Age is : "<<age<<endl;
			cout<<"Total runs : "<<tl_runs<<endl;
			cout<<"Total matches : "<<match<<endl;
			cout<<"Best performance : "<<bst_pfm<<endl;
			cout<<"Average runs are : "<<avg_runs;
		}
};
main()
{
	Batsman obj; // create the object of the class.
	obj.data();
	obj.details();
	obj.display();
	
}
