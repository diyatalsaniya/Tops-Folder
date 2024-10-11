import 'dart:io';

void main(List<String> args) {
  print('Enter priciple value : ');
  double pr = double.parse(stdin.readLineSync()!);

  print('Enter Rate of intrest : ');
  double ri = double.parse(stdin.readLineSync()!);

  print('Enter Time span : ');
  double ts = double.parse(stdin.readLineSync()!);

  double simple_intrest = pr * ri * ts / 100;

  print('Simple Intrest is : $simple_intrest');
}
