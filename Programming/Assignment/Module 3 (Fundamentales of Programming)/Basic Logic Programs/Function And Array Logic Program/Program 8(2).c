// Write a program of structure for five employee that provides the following information -print and displayempno, empname, address andage


#include <stdio.h>

#define MAX_EMPLOYEES 5

struct Employee {
    int empno;
    char empname[50];
    char address[100];
    int age;
};

void printEmployee(struct Employee emp) {
    printf("Employee Number: %d\n", emp.empno);
    printf("Employee Name: %s\n", emp.empname);
    printf("Address: %s\n", emp.address);
    printf("Age: %d\n", emp.age);
    printf("-----------------------------\n");
}

main() {
    struct Employee employees[MAX_EMPLOYEES];
    int i;

    for (i = 0; i < MAX_EMPLOYEES; i++) {
        printf("Enter details for employee %d:\n", i + 1);
        printf("Employee Number: ");
        scanf("%d", &employees[i].empno);
        getchar(); 
        printf("Employee Name: ");
        fgets(employees[i].empname, sizeof(employees[i].empname), stdin);
        employees[i].empname[strcspn(employees[i].empname, "\n")] = '\0'; 
        printf("Address: ");
        fgets(employees[i].address, sizeof(employees[i].address), stdin);
        employees[i].address[strcspn(employees[i].address, "\n")] = '\0'; 
        printf("Age: ");
        scanf("%d", &employees[i].age);
        getchar(); 
    }

    printf("\nEmployee Information:\n");
    for (i = 0; i < MAX_EMPLOYEES; i++) {
        printEmployee(employees[i]);
    }

}

