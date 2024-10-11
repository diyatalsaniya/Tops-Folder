import 'dart:io';

void main() {
  int n = 5; // Number of rows

  for (int i = 1; i <= n; i++) {
    // Print spaces
    for (int j = 1; j <= n - i; j++) {
      stdout.write(' ');
    }

    // Print stars
    for (int k = 1; k <= i; k++) {
      stdout.write('*');
    }

    print(''); // Move to the next line
  }
}
