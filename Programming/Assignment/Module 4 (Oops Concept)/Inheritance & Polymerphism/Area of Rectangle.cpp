// Write a C++ Program to find Area of Rectangle using inheritance.

#include <iostream>
using namespace std;
class Rectangle
{
	public:
	float len,wid,area;
    area_rec() 
	{
        cout<<"Enter the Length : ";
        cin>>len;
        cout<<"Enter the Width : ";
        cin>>wid;
        
     	area=len*wid;   
    }
};
class Result:public Rectangle
{
	public:
	display() // Function to display
	{
        cout<<"Area of Rectangle is : "<<area;
    }
};
    

main() 
{
	Result obj; // create a object of the class.
	obj.area_rec(); // call the rectangle function
	obj.display(); // call the display function.
}
