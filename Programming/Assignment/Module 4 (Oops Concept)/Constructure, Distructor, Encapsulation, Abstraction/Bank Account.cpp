// Write a C++ program to implement a class called Bank Account that has private member variables for account number and balance. Include 
// member functions to deposit and withdraw money from the account.

#include<iostream>
using namespace std;

class BankAccount	// Main class
{
	private:
		int bal, bal2, wit, accno, dep;
		
	public:
		BankAccount()	// Constructor
		{
			cout<<"Enter Account No : "<<endl;
			cin>>accno;
			cout<<"Enter amount for account balance : "<<endl;
			cin>>bal;
				
		}
		
		balance()
		{
			cout<<"Your balance is : "<<bal<<endl;
		}
		
		deposit()
		{
			cout<<"Enter amount for deposit : "<<endl;
			cin>>dep;
			
			bal = bal + dep;	// Final balance
			
			cout<<"Now your balance is : "<<bal<<endl;
		}
		
		withdraw()
		{
			cout<<"Enter amount for withdraw : "<<endl;
			cin>>wit;
			
			if(wit<bal)
			{
				bal2 = bal - wit;	// Final balance
				
				cout<<"Now your balance is : "<<bal2<<endl;
			}
			else
			{
				cout<<"Invalid ammount!!";
			}		
			
		}
};

main()
{
	BankAccount obj;
	
	while(1)	// Infinite Loop
	{
		int ch;
	
		cout<<"Press 1 for Show balance"<<endl;
		cout<<"Press 2 for Deposite"<<endl;
		cout<<"Press 3 for Withdraw"<<endl;
		cout<<"Press 4 for Exit"<<endl;
	
		cout<<"Enter Choice : ";
		cin>>ch;
	
		if(ch==1)
		{
			obj.balance();	// Balance function call for show balance
		}
		else if(ch==2)
		{
			obj.deposit();	// This function for deposite ammount
		}
		else if(ch==3)
		{
			obj.withdraw();	// This function for withdraw ammount
		}
		else if(ch==4)
		{
			cout<<"Thank you!!";
			break;
		}
		else
		{
			cout<<"Invalid choice";
		}
	
	}
		
}
