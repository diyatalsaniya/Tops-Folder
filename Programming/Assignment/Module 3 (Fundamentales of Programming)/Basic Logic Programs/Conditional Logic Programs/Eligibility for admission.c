#include<stdio.h>
main()
{
	int m_marks, p_marks, c_marks, total, m_p_total;
	printf("Enter Maths Marks : ");
	scanf("%d",&m_marks);
	printf("Enter Physics Marks : ");
	scanf("%d",&p_marks);
	printf("Enter Chemistry Marks : ");
	scanf("%d",&c_marks);
	
	
	if(m_marks>=65)
	{
		if(p_marks>=55)
		{
			if(c_marks>=50)
			{
				total = m_marks + p_marks + c_marks;
				
				if(total>=190)
				{
					printf("You are Eligible!!!");
				}
			}
		}
		m_p_total = m_marks + p_marks;
	}
	else if(m_p_total>=140)
	{
		printf("You are Eligible!!!");
	}
	else
	{
		printf("You are not Eligible!!!");
	}
}
