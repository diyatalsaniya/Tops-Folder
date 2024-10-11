import 'dart:io';

void main() {
  print("Enter a number : ");
  int number = int.parse(stdin.readLineSync()!);

  int reverse = 0;

  while (number != 0) {
    int digit = number % 10;  // Get the last digit
    reverse = reverse * 10 + digit;  // Build the reversed number
    number ~/= 10;  // Remove the last digit from the original number
  }

  print("Reversed number: $reverse");
}
