// Write a C++ program to create a class called Triangle that has private member variables for the lengths of its three sides. Implement member 
// functions to determine if the triangle is equilateral, isosceles, or scalene.

#include<iostream>
using namespace std;

class Triangle	// Main class
{
	private:
		int side1, side2, side3;
		
	public:
		Triangle()		// Constructure
		{
			cout<<"Enter Side1 : "<<endl;
			cin>>side1;
			cout<<"Enter Side2 : "<<endl;
			cin>>side2;
			cout<<"Enter Side3 : ";
			cin>>side3;
		}
		
		determine()
		{
			if(side1==side2 && side2==side3)		
			{
				cout<<"The triangle is equilateral...";		// If all side same
			}
			else if(side1==side2 || side2==side3 || side3==side1)
			{
				cout<<"The triangle is isosceles...";	// If only 2 side same
			}
			else
			{
				cout<<"The triangle is scalene...";		// If no one side same
			}
		}
};

main()
{
	Triangle obj;
	obj.determine();
}
