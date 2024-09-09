#include <stdio.h>

main() 
{
	
    float basic_salary, hra, da, gross_salary;


    printf("Enter the Basic Salary of the Employee: ");
    scanf("%f", &basic_salary);

    
    if (basic_salary <= 10000) 
	{
        hra = basic_salary * 0.20;  // 20% HRA
        da = basic_salary * 0.80;   // 80% DA
    } 
	else if (basic_salary <= 20000) 
	{
        hra = basic_salary * 0.25;  // 25% HRA
        da = basic_salary * 0.90;   // 90% DA
    } 
	else 
	{
        hra = basic_salary * 0.30;  // 30% HRA
        da = basic_salary * 0.95;   // 95% DA
    }

    gross_salary = basic_salary + hra + da;

    printf("Basic Salary   : %.2f\n", basic_salary);
    printf("HRA            : %.2f\n", hra);
    printf("DA             : %.2f\n", da);
    printf("Gross Salary   : %.2f\n", gross_salary);


}



//Output:

//Basic Salary   : 15000.00
//HRA            : 3750.00
//DA             : 13500.00
//Gross Salary   : 32250.00

