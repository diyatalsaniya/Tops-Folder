#include<iostream>
using namespace std;

class A
{
	public:
		A() // Constructor
		{
			cout<<"Welcome to our website!!"<<endl;
		}
		
		prime()
		{
			int n,i,prime=0;
			cout<<"Enter Number : ";
			cin>>n;
			
			for(i=1;i<=n;i++)
			{
				if(n%i==0)
				{
					prime++;
				}
			}
			if(prime==2)
			{
				cout<<"Number is prime"<<endl;
			}
			else
			{
				cout<<"Number is not prime"<<endl;
			}
			
		}
		
		~A() // Destructor
			{
				cout<<"Thank you for visit our website";
			}
};

main()
{
	A obj;
	obj.prime();
}
