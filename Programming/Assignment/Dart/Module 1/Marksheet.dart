import 'dart:io';

void main(List<String> args) {
  print('C Marks : ');
  var c = int.parse(stdin.readLineSync()!);

  print('Java Marks : ');
  var j = int.parse(stdin.readLineSync()!);

  print('Python Marks : ');
  var py = int.parse(stdin.readLineSync()!);

  print('Php Marks : ');
  var p = int.parse(stdin.readLineSync()!);

  print('Dart Marks : ');
  var d = int.parse(stdin.readLineSync()!);

  var total = c + j + py + p + d;

  double percentage = total / 5;

  print('Total marks of 5 subjects : $total');
  print('Percentage is : $percentage');
}
