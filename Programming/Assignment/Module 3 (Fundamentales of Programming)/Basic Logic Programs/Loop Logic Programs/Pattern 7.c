#include <stdio.h>

#define N 10 // Size of the matrix (10x10)

void printSpiral() {
    int row, col, num = 1, layer;
    int totalLayers = (N + 1) / 2;

    for (layer = 0; layer < totalLayers; layer++) {
        // Top row (left to right)
        for (col = layer; col < N - layer; col++) {
            printf("%3d ", num++);
        }

        // Right column (top to bottom)
        for (row = layer + 1; row < N - layer; row++) {
            printf("%3d ", num++);
        }

        // Bottom row (right to left)
        for (col = N - layer - 2; col >= layer; col--) {
            printf("%3d ", num++);
        }

        // Left column (bottom to top)
        for (row = N - layer - 2; row > layer; row--) {
            printf("%3d ", num++);
        }
    }

    printf("\n");
}

int main() {
    printSpiral();
    return 0;
}

