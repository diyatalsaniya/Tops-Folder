#include<stdio.h>
main()
{
	int angle1,angle2,angle3,triangle;
	
	printf("Enter Angle 1 : ");
	scanf("%d",&angle1);
	printf("Enter Angle 1 : ");
	scanf("%d",&angle2);
	printf("Enter Angle 1 : ");
	scanf("%d",&angle3);
	
	if(angle1>0)
	{
		if(angle2>0)
		{
			if(angle3>0)
			{
				if(triangle>=180)
				{
					printf(" Triangle can be formed...");
				}
			}
		}
	}
	else
	{
		printf("Traingle can be not formed...");
	}
}
