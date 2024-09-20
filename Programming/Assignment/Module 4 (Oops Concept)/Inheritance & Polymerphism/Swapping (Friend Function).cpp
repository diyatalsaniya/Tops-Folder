// 12. Write a program to swap the two numbers using friend function without using third variable

#include<iostream>
using namespace std;
class Swap{
	private:
		int x,y;
			
		friend class Result;		// connect with class Result by freind function 
};
class Result{
	public:
		myfun(Swap &obj)	// &obj is a new address of obj object
		{
			cout<<"Enter X : ";
			cin>>obj.x;
			
			cout<<"Enter Y : ";
			cin>>obj.y;
			
			cout<<endl<<"Before swapping = "<<"X : "<<obj.x<<","<<" Y : "<<obj.y<<endl;
			
			obj.x=obj.x+obj.y;
			obj.y=obj.x-obj.y;
			obj.x=obj.x-obj.y;
			
	 		cout<<endl<<"After swapping = "<<"X : "<<obj.x<<","<<" Y : "<<obj.y;
		}
};
main()
{
	Swap obj;
	Result obj1;
	obj1.myfun(obj);	// obj1 is a object of Result class and obj is a object of Swap class
}
