import 'dart:io';

void main(List<String> args) {
  print('Enter number 1: ');
  var num1 = int.parse(stdin.readLineSync()!);

  print('Enter number 2: ');
  var num2 = int.parse(stdin.readLineSync()!);

  print('Select an operation');
  print('1. Addition');
  print('2. Substraction');
  print('3. Multiplication');
  print('4. Division');

  print('Enter choice from 1 to 4: ');
  var ch = int.parse(stdin.readLineSync()!);

  switch (ch) {
    case 1:
      print('Addition : ${num1 + num2}');
      break;
    case 2:
      print('Substraction : ${num1 - num2}');
      break;
    case 3:
      print('Multiplication : ${num1 * num2}');
      break;
    case 4:
      print('Division : ${num1 / num2}');
      break;
    default:
      print('Thank You!!!');
  }
}
