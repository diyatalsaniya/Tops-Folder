import 'dart:io';

void main() {
  print("Enter the number : ");
  int terms = int.parse(stdin.readLineSync()!);

  int first = 0, second = 1;

  print("Fibonacci Series up to $terms terms:");

  for (int i = 1; i <= terms; i++) {
    print(first);

    // Calculate the next term
    int next = first + second;
    first = second;
    second = next;
  }
}
