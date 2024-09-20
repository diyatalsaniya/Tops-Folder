#include<iostream>
using namespace std;

class Car
{
	private:	// It's private access 
		string company, model;
		int year;
		
	public:
		get()	// Get method for take enter details from users
		{
			cout<<"Enter Company Name : ";
			cin>>company;
			cout<<"Enter Model Name : ";
			cin>>model;
			cout<<"Enter Year : ";
			cin>>year;
		}
		
		set()	// Set method for data 
		{
			cout<<"Your Car's company is : "<<company<<endl;
			cout<<"Your Car's model is : "<<model<<endl;
			cout<<"Your Car's puchase year is : "<<year;
		}
};

main()
{
	Car obj;
	obj.get();
	obj.set();	// set function call for show data
}
