// WAP to show difference between Structure and Union

#include <stdio.h>

// Define a structure for Employee
struct Employee 
{
    int empno;
    char empname[50];
    float salary;
};

// Define a union for Data
union Data 
{
    int intValue;
    float floatValue;
    char charValue;
};

main() 
{

    struct Employee emp;	// Create an Employee structure instance
    
    // Initialize the Employee structure
    emp.empno = 101;
    snprintf(emp.empname, sizeof(emp.empname), "John Doe");
    emp.salary = 50000.50;

    printf("Structure:\n");
    printf("Employee Number: %d\n", emp.empno);
    printf("Employee Name: %s\n", emp.empname);
    printf("Employee Salary: %.2f\n", emp.salary);
    printf("Size of Structure: %zu bytes\n\n", sizeof(emp));

    union Data data;	// Create a Data union instance
    
    // Set and display different values for the union
    data.intValue = 10;
    printf("Union with intValue: %d\n", data.intValue);

    data.floatValue = 20.5f;
    printf("Union with floatValue: %.2f\n", data.floatValue);

    data.charValue = 'A';
    printf("Union with charValue: %c\n", data.charValue);
    
    // Display the size of the union
    printf("Size of Union: %zu bytes\n", sizeof(data));

}

