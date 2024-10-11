import 'dart:io';

void main() {
  int n = 5;  // Number of rows

  for (int i = 1; i <= n; i++) {
    int square = i * i;  // Calculate the square of the row number

    // Print the square number repeated for the current row
    for (int j = 1; j <= i; j++) {
      stdout.write('$square ');  // Print the square
    }

    stdout.writeln();  // Move to the next line
  }
}
