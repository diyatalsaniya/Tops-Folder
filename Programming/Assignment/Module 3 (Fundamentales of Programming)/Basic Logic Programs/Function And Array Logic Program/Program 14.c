// Perform 2D matrix array

#include <stdio.h>

#define ROWS 3		// Number of rows in the matrices
#define COLS 3		// Number of columns in the matrices


// Function to input elements into a matrix
inputMatrix(int matrix[ROWS][COLS]) 
{
	int i, j;
	
    printf("Enter elements of the matrix:\n");
    for (i = 0; i < ROWS; i++) 
	{
        for (j = 0; j < COLS; j++) 
		{
            printf("Element [%d][%d]: ", i, j);
            scanf("%d", &matrix[i][j]);
        }
    }
}


// Function to display a matrix
displayMatrix(int matrix[ROWS][COLS]) 
{
	int i, j;
	
    printf("Matrix:\n");
    for (i = 0; i < ROWS; i++) 
	{
        for (j = 0; j < COLS; j++) 
		{
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}


// Function to add two matrices
addMatrices(int matrix1[ROWS][COLS], int matrix2[ROWS][COLS], int result[ROWS][COLS]) 
{
	int i, j;
    for (i = 0; i < ROWS; i++) 
	{
        for (j = 0; j < COLS; j++) 
		{
            result[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }
}

main() 
{
	
    int matrix1[ROWS][COLS], matrix2[ROWS][COLS], result[ROWS][COLS];
    
    // Input and display the first matrix
    printf("Matrix 1:\n");
    inputMatrix(matrix1);
    displayMatrix(matrix1);

    printf("\nMatrix 2:\n");
    inputMatrix(matrix2);
    displayMatrix(matrix2);
    
    // Add matrices and display the result
    addMatrices(matrix1, matrix2, result);
    printf("\nSum of Matrix 1 and Matrix 2:\n");
    displayMatrix(result);

}

