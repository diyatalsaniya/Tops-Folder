#include<iostream>
using namespace std;

class Hello
{
	public:
		
	Hello(int n) // Parameters
	{
		int i, fac=1;
		for(i=1;i<=n;i++)
		{
			fac*=i;
		}
		cout<<fac;
	}
};

main()
{
	Hello obj(5); // Argument
}
