import 'dart:io';

void main(List<String> args) {
  print('Enter Number : ');
  var num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print('$num is positive number');
  } else {
    print('$num is negative number');
  }
}
