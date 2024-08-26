// WAP to make addition, Subtraction and multiplication of two matrix using2-D Array

#include <stdio.h>

#define MAX 10 // Maximum size of matrix dimensions

addMatrices(int a[MAX][MAX], int b[MAX][MAX], int result[MAX][MAX], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            result[i][j] = a[i][j] + b[i][j];
        }
    }
}


subtractMatrices(int a[MAX][MAX], int b[MAX][MAX], int result[MAX][MAX], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            result[i][j] = a[i][j] - b[i][j];
        }
    }
}


multiplyMatrices(int a[MAX][MAX], int b[MAX][MAX], int result[MAX][MAX], int row1, int col1, int row2, int col2) {
    if (col1 != row2) {
        printf("Matrix multiplication is not possible.\n");
        return;
    }
    for (int i = 0; i < row1; i++) {
        for (int j = 0; j < col2; j++) {
            result[i][j] = 0;
            for (int k = 0; k < col1; k++) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}


printMatrix(int matrix[MAX][MAX], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}

main() 
{
    int a[MAX][MAX], b[MAX][MAX], result[MAX][MAX];
    int row1, col1, row2, col2;
    int choice;

    printf("Enter the number of rows and columns for the first matrix: ");
    scanf("%d %d", &row1, &col1);
    printf("Enter elements of the first matrix:\n");
    for (int i = 0; i < row1; i++) {
        for (int j = 0; j < col1; j++) {
            scanf("%d", &a[i][j]);
        }
    }

    printf("Enter the number of rows and columns for the second matrix: ");
    scanf("%d %d", &row2, &col2);
    printf("Enter elements of the second matrix:\n");
    for (int i = 0; i < row2; i++) {
        for (int j = 0; j < col2; j++) {
            scanf("%d", &b[i][j]);
        }
    }

    printf("Choose an operation:\n");
    printf("1. Addition\n");
    printf("2. Subtraction\n");
    printf("3. Multiplication\n");
    printf("Enter your choice (1-3): ");
    scanf("%d", &choice);

    switch (choice) {
        case 1:
            if (row1 == row2 && col1 == col2) {
                addMatrices(a, b, result, row1, col1);
                printf("Matrix after addition:\n");
                printMatrix(result, row1, col1);
            } else {
                printf("Matrix addition is not possible due to mismatched dimensions.\n");
            }
            break;

        case 2:
            if (row1 == row2 && col1 == col2) {
                subtractMatrices(a, b, result, row1, col1);
                printf("Matrix after subtraction:\n");
                printMatrix(result, row1, col1);
            } else {
                printf("Matrix subtraction is not possible due to mismatched dimensions.\n");
            }
            break;

        case 3:
            if (col1 == row2) {
                multiplyMatrices(a, b, result, row1, col1, row2, col2);
                printf("Matrix after multiplication:\n");
                printMatrix(result, row1, col2);
            } else {
                printf("Matrix multiplication is not possible due to mismatched dimensions.\n");
            }
            break;

        default:
            printf("Invalid choice.\n");
            break;
    }

}

