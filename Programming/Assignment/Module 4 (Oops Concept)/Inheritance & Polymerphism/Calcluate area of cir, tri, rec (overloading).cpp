// Write a program to calculate the area of circle, rectangle and triangleusing Function Overloading 
//Rectangle: Area * breadth 
//Triangle: ½ *Area * breadth
//breadthCircle: Pi * Area *Area

#include<iostream>
using namespace std;

class Calculate
{
	public:
		int ar_cir, ar_rec, ar_tri, ar = 5, breadth = 3;
		float num = 0.5;
		
		area(int ar, int bre)	// passing integer parameters in over loading 
		{
			ar_rec = ar * bre;
			cout<<"Area of Rectangle is : "<<ar_rec<<endl;
		}
		
		area(float pi, float ar1, float ar2)	// passing float parameters in over loading 
		{
			ar_cir = pi * ar1 * ar2;
			cout<<"Area of Circle is : "<<ar_cir<<endl;
		}
		
		area_tri()
		{
			ar_cir = num * ar * breadth;
			cout<<"Area of Triangle is : "<<ar_cir<<endl;
		}
};

main()
{
	Calculate obj;
	obj.area(10,6);		// passing arguments of integer
	obj.area(3.14,7,7);		// // passing arguments of float
	obj.area_tri();
}
