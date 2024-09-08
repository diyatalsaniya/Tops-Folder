// WAP to show difference between Structure and Union.

#include <stdio.h>

// Structure to store employee details
struct Employee 
{
    int empno;
    char empname[50];
    float salary;
};

// Union to demonstrate different data types sharing the same memory
union Data 
{
    int intValue;
    float floatValue;
    char charValue;
};

int main() 
{
	
	// Create and initialize a structure instance
    struct Employee emp;
    emp.empno = 101;
    snprintf(emp.empname, sizeof(emp.empname), "John Doe");
    emp.salary = 50000.50;

    printf("Structure:\n");
    printf("Employee Number: %d\n", emp.empno);
    printf("Employee Name: %s\n", emp.empname);
    printf("Employee Salary: %.2f\n", emp.salary);
    printf("Size of Structure: %zu bytes\n\n", sizeof(emp));
    
    // Create and use a union instance
    union Data data;
    data.intValue = 10;
    printf("Union:\n");
    printf("Union with intValue: %d\n", data.intValue);

    data.floatValue = 20.5f;
    printf("Union with floatValue: %.2f\n", data.floatValue);

    data.charValue = 'A';
    printf("Union with charValue: %c\n", data.charValue);

    printf("Size of Union: %zu bytes\n", sizeof(data));

}

