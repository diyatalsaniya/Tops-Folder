#include<stdio.h>
main()
{
	char names[5][100]; 
    float salaries[5]; 
    float totalSalary = 0, averageSalary;
    int i;
    
    // Input employee data
    for (i = 0; i < 5; i++) {
        printf("Enter the name of employee %d: ", i + 1);
        scanf("%s", names[i]); 
        
        printf("Enter the salary of %s: ", names[i]);
        scanf("%f", &salaries[i]); 
        
        totalSalary += salaries[i];
    }
    
    averageSalary = totalSalary / 5;	// Calculate average salary
    
    printf("\nTotal Salary: %.2f\n", totalSalary);
    printf("Average Salary: %.2f\n", averageSalary);

}
