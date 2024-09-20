// Write a C++ program to implement a class called Date that has private member variables for day, month, and year. Include member functions to 
// set and get these variables, as well as to validate if the date is valid.

#include<iostream>
using namespace std;

class Date		// Parent class
{
	private:
		int day, month, year, date;		// Private variables
		
	public:
		set()		// set method
		{
			cout<<"Enter Day : ";
			cin>>day;
			cout<<"Enter Month : ";
			cin>>month;
			cout<<"Enter Year : ";
			cin>>year;	
		}
		
		get()		// get method
		{
			if(day>1 && day<31)
			{
				if(month>1 && month<12)
				{
					if(year%4==0)
					{
						cout<<"Valid Date!!"<<endl;
					}
				}
			}
			else
			{
				cout<<"Invalid date!!";
			}
		}
		
};

main()
{
	Date obj;
	obj.set();
	obj.get();
}

