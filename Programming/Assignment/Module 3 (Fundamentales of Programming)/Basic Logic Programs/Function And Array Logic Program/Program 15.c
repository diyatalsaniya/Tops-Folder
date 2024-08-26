// Store 5 numbers in array and sort it in ascending order

#include <stdio.h>

#define SIZE 5

bubbleSort(int arr[], int n) 
{
    int temp, i, j;
    for (i = 0; i < n - 1; i++) 
	{
        for (j = 0; j < n - i - 1; j++) 
		{
            if (arr[j] > arr[j + 1]) 
			{
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}


displayArray(int arr[], int n) 
{
	int i;
	
    printf("Sorted Array:\n");
    for (i = 0; i < n; i++) 
	{
        printf("%d ", arr[i]);
    }
    printf("\n");
}

main() 
{
	
    int numbers[SIZE], i;

    printf("Enter %d numbers:\n", SIZE);
    for (i = 0; i < SIZE; i++) 
	{
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    bubbleSort(numbers, SIZE);

    displayArray(numbers, SIZE);

}


