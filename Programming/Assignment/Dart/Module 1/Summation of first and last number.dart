import 'dart:io';

void main() {
  print("Enter a number: ");
  String input = stdin.readLineSync()!;
  
  // Remove the negative sign if present
  String positiveInput = input.replaceFirst('-', '');
  
  // Get the first and last digit
  int firstDigit = int.parse(positiveInput[0]);  // First digit
  int lastDigit = int.parse(positiveInput[positiveInput.length - 1]);  // Last digit

  // Calculate the summation
  int summation = firstDigit + lastDigit;

  print("The summation of the first and last digits is: $summation");
}
