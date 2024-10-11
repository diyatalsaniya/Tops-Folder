import 'dart:io';

void main(List<String> args) {
  print('Enter base value : ');
  double bas = double.parse(stdin.readLineSync()!);

  print('Enter Height : ');
  double hei = double.parse(stdin.readLineSync()!);

  double result = bas * hei / 2;

  print('Area of Triangle is : $result');
}
