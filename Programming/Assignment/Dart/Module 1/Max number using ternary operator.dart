import 'dart:io';

void main(List<String> args) {
  print('Enter number 1 : ');
  var num1 = int.parse(stdin.readLineSync()!);

  print('Enter number 2 : ');
  var num2 = int.parse(stdin.readLineSync()!);

  print('Enter number 3 : ');
  var num3 = int.parse(stdin.readLineSync()!);

  var max =
      (num1 > num2) ? (num1 > num3 ? num1 : num3) : (num2 > num3 ? num2 : num3);

  print("The maximum number is: $max");
}
