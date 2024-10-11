import 'dart:io';

void main() {
  int n = 5;  // Number of rows

  for (int i = 1; i <= n; i++) {
    // Print alternating 1s and 0s for the current row
    for (int j = 1; j <= i; j++) {
      // Always print 1 for odd columns, and 0 for even columns
      if (j % 2 == 0) {
        stdout.write('0 ');
      } else {
        stdout.write('1 ');
      }
    }

    stdout.writeln();  // Move to the next line
  }
}
