// Write a program to find out the max number from given array using function

#include <stdio.h>

findMax(int arr[], int size) 
{
	
    int max = arr[0];  // Assume the first element is the maximum
    int i;

    for (i = 1; i < size; i++) 
	{
        if (arr[i] > max) 
		{
            max = arr[i];  // Update max if a larger element is found
        }
    }

    return max;
}

main() 
{
	
    int n;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    int arr[n], i;
    printf("Enter %d elements:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    int max = findMax(arr, n);
    printf("The maximum number in the array is: %d\n", max);

}

