import 'dart:io';

void main() {
  int n = 5;  // Number of rows

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);  // Print the current row number
    }
    print('');  // Move to the next line
  }
}
