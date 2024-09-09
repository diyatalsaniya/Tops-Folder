#include<stdio.h>
main()
{
	// Simple Array
	// int a[2][3] = {{1,2,3},{5,8,4}};
	// printf("%d",a[1][0]);
	int a[2][3],b[2][3];
	int i,j;
	
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Enter Elements : ");
			scanf("%d",&a[i][j]);
		}
	}
	printf("\n**************************\n");
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Elements are : %d\n",a[i][j]);
		}
	}
	
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",a[i][j]);
		}
		printf("\n");
	}
	printf("\n**************************\n");
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Enter Elements : ");
			scanf("%d",&b[i][j]);
		}
	}
	printf("\n**************************\n");
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Elements are : %d\n",b[i][j]);
		}
	}
	printf("\n************Addition**************\n");
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Addition is : %d\n",a[i][j]+b[i][j]);
		}
	}
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",a[i][j]+b[i][j]);
		}
		printf("\n");
	}
}

