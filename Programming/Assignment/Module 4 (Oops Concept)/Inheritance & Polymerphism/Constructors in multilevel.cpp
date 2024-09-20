// Write a C++ Program to illustrates the use of Constructors in multilevel inheritance.

#include<iostream>
using namespace std;

class Grandparent 
{		// Base class
    public:
        Grandparent() 
		{
            cout<<"Grandparent constructor called."<<endl;
        }
};

class Parent :public Grandparent
{		// Derived class from Grandparent
    public:
        Parent()
		{
            cout<<"Parent constructor called."<<endl;
        }
};


class Child :public Parent
{		// Derived class from Parent
    public:
        Child() 
		{
            cout<<"Child constructor called."<<endl;
        }
};

main() 
{
    Child obj;  // Creating an object of the Child class
}


