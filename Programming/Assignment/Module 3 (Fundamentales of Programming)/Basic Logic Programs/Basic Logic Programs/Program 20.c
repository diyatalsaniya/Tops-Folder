#include<stdio.h>
main()
{
	float monthly_salary, insurance_premium, loan_installment, remaining_salary;

    printf("Enter your monthly salary: ");
    scanf("%f", &monthly_salary);

    insurance_premium = monthly_salary * 0.10;
    loan_installment = monthly_salary * 0.10;

    remaining_salary = monthly_salary - insurance_premium - loan_installment;

    printf("Insurance premium: %.2f\n", insurance_premium);
    printf("Loan installment: %.2f\n", loan_installment);
    printf("Remaining salary: %.2f\n", remaining_salary);
}
