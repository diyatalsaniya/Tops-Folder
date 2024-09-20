// Write a program to concatenate the two strings using Operator Overloading

#include <iostream>
#include <cstring>  // For strcpy and strcat
using namespace std;

class String 
{
    char str[100];  // Array to store the string

public:
    // Constructor to initialize string
    String() 
	{
        str[0] = '\0';  // Initialize with an empty string
    }

    // Constructor to accept a C-style string
    String(const char s[]) 
	{
        strcpy(str, s);  // Copy the passed string into 'str'
    }

    // Overloading the + operator for string concatenation
    String operator+(String &obj) 
	{
        String result;  // Create a new String object to store the result
        strcpy(result.str, str);  // Copy the first string
        strcat(result.str, obj.str);  // Concatenate the second string
        return result;  // Return the result object
    }

    // Function to display the string
    void display() 
	{
        cout << str << endl;
    }
};

int main() {
    String s1("Hello, ");  // First string
    String s2("World!");   // Second string

    String s3 = s1 + s2;   // Using overloaded + operator to concatenate

    cout << "Concatenated string: ";
    s3.display();  // Display the concatenated result

}
