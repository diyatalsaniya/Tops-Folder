import 'dart:io';

void main() {
  print("Enter a number : ");
  int number = int.parse(stdin.readLineSync()!);

  int fac = 1;

  for (int i = 1; i <= number; i++) {
    fac *= i; // Multiply factorial by i
  }

  print("The factorial of $number is: $fac");
}
