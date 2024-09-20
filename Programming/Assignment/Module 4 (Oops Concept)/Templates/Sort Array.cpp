// Write a program of to sort the array using templates

#include<iostream>
using namespace std;

template <typename Array>	// Array is a class name
Array sort(Array a[], Array i)
{
	for(i=0;i<4;i++)
	{
		for(int j=i+1;j<4;j++)
		{
			if(a[i]>a[i + 1])	// Logic for swapping elements
			{
				int temp;
				temp = a[i];
				a[i] = a[i + 1];
				a[i + 1] = temp;
			}
		}
		cout<<"Elements Are : "<<a[i];		// Print elements
	}
}

main()
{
	sort<int>(a[i]);
}
