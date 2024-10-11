import 'dart:io';

void main(List<String> args) {
  print('Enter radius : ');
  double rad = double.parse(stdin.readLineSync()!);

  double result = 3.14 * rad * rad;

  print('Area of circle is : $result');
}
