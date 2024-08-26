#include <stdio.h>

isPalindrome(int num) {
    int originalNum = num;
    int reversedNum = 0;
    int remainder;

    while (num != 0) {
        remainder = num % 10;
        reversedNum = reversedNum * 10 + remainder;
        num /= 10;
    }

    return originalNum == reversedNum;
}

main() {
    int count = 0;
    int num;

    while (count < 3) {
        printf("Enter number %d: ", count + 1);
        scanf("%d", &num);

        if (isPalindrome(num)) {
            printf("%d is a palindrome.\n", num);
        } else {
            printf("%d is not a palindrome.\n", num);
        }

        count++;
    }

}

