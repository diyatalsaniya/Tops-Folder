import 'dart:io';

void main() {
  int n = 5;  // Number of rows
  int count = 1;  // To keep track of the current number

  for (int i = 1; i <= n; i++) {
    // Add numbers in the current row
    for (int j = 1; j <= i; j++) {
      stdout.write('$count ');  // Print the current number
      count++;  // Increment the number
    }

    stdout.writeln();  // Move to the next line
  }
}
