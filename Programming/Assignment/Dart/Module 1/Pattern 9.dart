import 'dart:io';

void main() {
  int n = 5;  // Number of rows

  for (int i = 1; i <= n; i++) {
    // Add spaces
    for (int j = 1; j <= n - i; j++) {
      stdout.write(' ');
    }

    // Add numbers, repeating the current row number
    for (int k = 1; k <= i; k++) {
      stdout.write('$i ');  // Use the current row number
    }

    stdout.writeln();  // Move to the next line
  }
}
