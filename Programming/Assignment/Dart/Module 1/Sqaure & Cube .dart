import 'dart:io';

void main(List<String> args) {
  print('Enter Number for square : ');
  double sqr = double.parse(stdin.readLineSync()!);

  print('Enter number for cube : ');
  double cub = double.parse(stdin.readLineSync()!);

  double square = sqr * sqr;
  double cube = cub * cub * cub;

  print('Sqaure of $sqr is : $square');
  print('Cube of $cub is : $cube');
}
