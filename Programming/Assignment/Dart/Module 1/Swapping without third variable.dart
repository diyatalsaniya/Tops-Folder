import 'dart:io';

void main(List<String> args) {
  print('Enter Number 1 : ');
  var num1 = int.parse(stdin.readLineSync()!);

  print('Enter Number 2 : ');
  var num2 = int.parse(stdin.readLineSync()!);

  var number1 = num1 + num2;
  var number2 = number1 - num2;
  var number3 = number1 - number2;

  print('After swapping number 1 : $number3');
  print('After swapping number 2 : $number2');
}
