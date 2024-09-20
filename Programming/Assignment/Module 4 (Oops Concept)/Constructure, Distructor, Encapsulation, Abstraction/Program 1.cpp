// Write a programto find the multiplication values and the cubic values usinginline function

#include<iostream>
using namespace std;

class Function	// Main class
{
	public: 
		int multiplication, cubic, num;
		
	show()
	{
		cout<<"Enter number : ";
		cin>>num;
	}
	
	inline int mal()	// Inline function of multiplication
	{
		multiplication = num * num;
	}
	
	inline int cub()	// Inline function of cubic
	{
		cubic = num * num * num;
	}
	
	result()	// Function of final result
	{
		cout<<"Multiplication is : "<<multiplication<<endl;
		cout<<"Cubic is : "<<cubic;
	}
};

main()
{
	Function obj;
	obj.show();
	obj.mal();
	obj.cub();
	obj.result();	// It's function call for show final result
}
