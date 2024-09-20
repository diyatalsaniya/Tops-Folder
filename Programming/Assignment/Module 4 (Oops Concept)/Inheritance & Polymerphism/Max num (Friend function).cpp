// 13. Write a program to find the max number from given two numbersusing friend function

#include<iostream>
using namespace std;
class Max{
	private:
		int a,b;
			
		friend class Result;		// connect class Result by using friend function
};
class Result{
	public:
		myfun(Max &obj)		// obj is a new address and store all the data Max
		{
			cout<<"Enter A : ";
			cin>>obj.a;
			
			cout<<"Enter B : ";
			cin>>obj.b;
			
			if(obj.a>obj.b)
			{
				cout<<endl<<"A is max.";
			}
			else
			{
				cout<<endl<<"B is max.";
			}
		}
};
main()
{
	Max obj;
	Result obj1;
	obj1.myfun(obj);	//obj1 is a object of Result class and obj is a object of Max
}
