import 'dart:io';

void main() {
  print("Enter a number: ");
  String input = stdin.readLineSync()!;
  
  // Remove the negative sign if present
  String positiveInput = input.replaceFirst('-', '');
  
  int maxDigit = -1;  // Initialize maxDigit to an impossible value

  for (int i = 0; i < positiveInput.length; i++) {
    int digit = int.parse(positiveInput[i]);  // Get each digit as an integer
    if (digit > maxDigit) {
      maxDigit = digit;  // Update maxDigit if the current digit is greater
    }
  }

  print("Maximum digit is: $maxDigit");
}
