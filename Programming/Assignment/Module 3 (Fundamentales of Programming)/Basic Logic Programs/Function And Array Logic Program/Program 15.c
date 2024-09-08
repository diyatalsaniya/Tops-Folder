// Store 5 numbers in array and sort it in ascending order

#include <stdio.h>

#define SIZE 5		// Number of elements in the array

// Function to perform bubble sort
bubbleSort(int arr[], int n) 
{
    int temp, i, j;
    // Loop through all elements
    for (i = 0; i < n - 1; i++) 
	{
		// Perform comparisons and swaps for the remaining elements
        for (j = 0; j < n - i - 1; j++) 
		{
            if (arr[j] > arr[j + 1]) 
			{
				// Swap elements if they are in the wrong order
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
    
    // Sort the array using bubble sort
    bubbleSort(numbers, SIZE);
    
    // Display the sorted array
    displayArray(numbers, SIZE);

}


