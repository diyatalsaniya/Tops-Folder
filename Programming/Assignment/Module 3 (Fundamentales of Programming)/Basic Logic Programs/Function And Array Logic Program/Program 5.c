// WAP to take two Array input from user and sort them in ascending ordescending order as per user’s choice

#include <stdio.h>

sortAscending(int arr[], int size) 
{
    int temp, i, j;
    for (i = 0; i < size - 1; i++) 
	{
        for (j = i + 1; j < size; j++) 
		{
            if (arr[i] > arr[j]) 	// Swap if the current element is greater
			{
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}


sortDescending(int arr[], int size) 
{
    int temp, i, j;
    for (i = 0; i < size - 1; i++) 
	{
        for (j = i + 1; j < size; j++) 
		{
            if (arr[i] < arr[j]) 	// Swap if the current element is smaller
			{
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}


printArray(int arr[], int size, int i) 
{
    for (i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

main() 
{
    int n1, n2, choice, i;
    
    // Input the first array
    printf("Enter the number of elements in the first array: ");
    scanf("%d", &n1);
    int arr1[n1];
    printf("Enter %d elements for the first array:\n", n1);
    for (i = 0; i < n1; i++) 
	{
        scanf("%d", &arr1[i]);
    }

    printf("Enter the number of elements in the second array: ");
    scanf("%d", &n2);
    int arr2[n2];
    printf("Enter %d elements for the second array:\n", n2);
    for (i = 0; i < n2; i++) 
	{
        scanf("%d", &arr2[i]);
    }
    
    // Input the second array
    printf("Choose sorting order:\n");
    printf("1. Ascending\n");
    printf("2. Descending\n");
    printf("Enter your choice (1 or 2): ");
    scanf("%d", &choice);

    printf("First array before sorting:\n");
    printArray(arr1, n1);
    if (choice == 1) 	
	{
        sortAscending(arr1, n1);	// Sort in ascending order
    } 
	else if (choice == 2) 
	{
        sortDescending(arr1, n1);	// Sort in descending order
    } 
	else 
	{
        printf("Invalid choice.\n");
        return 1;
    }
    printf("First array after sorting:\n");
    printArray(arr1, n1);


    printf("Second array before sorting:\n");
    printArray(arr2, n2);
    if (choice == 1) 
	{
        sortAscending(arr2, n2);
    } 
	else if (choice == 2) 
	{
        sortDescending(arr2, n2);
    }
    printf("Second array after sorting:\n");
    printArray(arr2, n2);

}

