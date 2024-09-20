#include<iostream>
using namespace std;

class Circle
{
	private: 
		float pi=3.14, radius, area, circumference;
		
	public:
		
		// Function to take input
		show()
		{
			cout<<"Enter Radius : "<<endl;
			cin>>radius;
		}
		
		// Function to calculate area of circle
		cirArea()
		{
			area = pi*radius*radius;	// Calculate area
			cout<<"Area of circle is : "<<area<<endl;
		}
		
		// Function to calculate circumference of circle
		cirCum()
		{
			circumference = 2*pi*radius;	// Calculate circumference
			cout<<"Circumference of circle is : "<<circumference<<endl;
		}
};

main()
{
	Circle obj;
	obj.show();
	obj.cirArea();	// Call the function to calculate the area
	obj.cirCum();	// Call the function to calculate the circumference
}
