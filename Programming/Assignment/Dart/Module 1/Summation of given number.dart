import 'dart:io';

void main() {
  print("Enter a number: ");
  String input = stdin.readLineSync()!;
  
  // Remove the negative sign if present
  String positiveInput = input.replaceFirst('-', '');
  
  int sum = 0;

  for (int i = 0; i < positiveInput.length; i++) {
    sum += int.parse(positiveInput[i]);  // Convert each character to an integer and add to sum
  }

  print("The summation of the digits is: $sum");
}
