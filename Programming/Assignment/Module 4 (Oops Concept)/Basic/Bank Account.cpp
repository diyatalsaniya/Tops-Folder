#include<iostream>
using namespace std;

class Bank
{
	public:
		int acno, balance=5000, de, we;	// Here minimum balance is already diclared
		string name, acname;
		
		create()
		{
			cout<<"Enter Name : ";
			cin>>name;
			
			cout<<"Enter Account type : ";
			cin>>acname;
				
			cout<<"Enter Account No : ";
			cin>>acno;
			
			cout<<"Your Payment is : "<<balance<<endl;
			
			this->balance = balance;	// Use of this pointer to store balance variable
		}
		
		deposit()
		{
			cout<<"Enter Amount for Deposit : ";
			cin>>de;
			
			this->de = de;
			
			this->balance = this->balance + de;		// Total balance after deposit amount
		}
		
		withdraw()
		{
			cout<<"Enter Amount for Withdraw : ";
			cin>>we;
			
			this->we = we;
			
			if(this->we<this->balance)
			{
				this->balance = this->balance - this->we;	// Total balance after withdraw amount
			}
			else
			{
				cout<<"Insuffisiant Ammount";
			}
		}
		
		bal()	// This function to show final detail of account
		{
			cout<<"Name : "<<name<<endl;
			cout<<"Account Type : "<<acname<<endl;
			cout<<"Your Balance is : "<<this->balance;	
		}
};

main()
{
	Bank obj;
	
	cout<<"Press 1 for New Account"<<endl;
	cout<<"Press 2 for Exit"<<endl;
	
	int ch;
	cout<<"Enter Choice : "<<endl;
	cin>>ch;
	
	if(ch==1)
	{
			
		obj.create();
			
		while(1)	// Infinite Loop
		{
			cout<<"Press 1 for Deposit"<<endl;
			cout<<"Press 2 for Withdraw"<<endl;
			cout<<"Press 3 for Show Balance"<<endl;
			cout<<"Press 4 for Exit"<<endl;
	
			int ch1;
			cout<<"Enter Choice : "<<endl;
			cin>>ch1;
	
			if(ch1==1)
			{
				obj.deposit();
			}
		
			else if(ch1==2)
			{
				obj.withdraw();
			}
		
			else if(ch1==3)
			{
				obj.bal();
			}
		
			else if(ch1==4)
			{
				cout<<"Thank You!!";
			}
		
			else
			{
				cout<<"Invalid Choice";
			}			
		}
			
	}
}
