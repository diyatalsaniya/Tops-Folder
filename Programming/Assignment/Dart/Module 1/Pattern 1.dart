import 'dart:io';

void main() {
  int n = 5; // number of rows
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*'); // use stdout.write instead of print
    }
    print('');
  }
}
