#include<iostream>
using namespace std;

main()
{
	int a[5], i, j, temp;
	
	for(i=0;i<5;i++)
	{
		cout<<"Enter Number : ";
		cin>>a[i];
	}
	
	for(i=0;i<5;i++)
	{
		cout<<"Number is : "<<a[i]<<endl;
	}
	
	for(i=0;i<5;i++)
	{
		for(j=i+1;j<5;j++)
		{
			if(a[i]>a[j])
			{
				temp = a[i];
				a[i] = a[j];
				a[j] = temp;
			}
		}
		cout<<"Assending Order : "<<a[i]<<endl;
	}
}
