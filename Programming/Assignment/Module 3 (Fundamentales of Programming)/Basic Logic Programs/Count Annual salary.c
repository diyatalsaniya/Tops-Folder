#include<stdio.h>
main()
{
	int salary, annual_salary;
	printf("Enter Monthly Salary : ");
	scanf("%d",&salary);
	
	annual_salary = salary*12;
	
	printf("Person's Annual Salary is : %d",annual_salary);
}
