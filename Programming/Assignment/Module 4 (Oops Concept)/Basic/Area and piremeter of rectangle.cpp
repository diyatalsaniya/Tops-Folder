#include<iostream>
using namespace std;

class Rectangle
{
	private:
		float len, wid, area, piremeter, lwSum=0 ;
		
	public:
		show()
		{
			cout<<"Enter Length : "<<endl;
			cin>>len;
			cout<<"Enter Width : "<<endl;
			cin>>wid;
		}
		
		// Function of calculate area of rectangle
		recArea()
		{
			area = len * wid;	// Calculate area
			cout<<"Area of rectangle : "<<area<<endl;
		}
		
		// Function of calculate piremeter of rectangle
		recPire()
		{
			lwSum = len + wid;
			piremeter = 2 * lwSum ;	// Calculate piremeter
			cout<<"Piremeter of rectangle : "<<piremeter<<endl;
		}
};

main()
{
	Rectangle obj;
	obj.show();
	obj.recArea();	// Call the function to calculate the area of rectangle
	obj.recPire();	// Call the function to calculate the piremeter of rectangle
}
