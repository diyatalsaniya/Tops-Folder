import 'dart:io';

void main(List<String> args) {
  print('Enter number 1 : ');
  // var num1 = stdin.readLineSync();
  double num1 = double.parse(stdin.readLineSync()!);
  print('Number 1 : $num1');

  print('Enter number 2 : ');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Number 2 : $num2');

  double add = num1 + num2;     // Addition of two numbers
  double sub = num1 - num2;
  double mul = num1 * num2;
  double div = num1 / num2;

  print('Addition is : $add');
  print('Substraction is : $sub');
  print('Multiplication is : $mul');
  print('Division is : $div');
}
