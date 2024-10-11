import 'dart:io';

void main(List<String> args) {
  print('Enter year: ');
  var y = int.parse(stdin.readLineSync()!);

  if (y % 4 == 0) {
    print('$y is Leap year');
  } else {
    print('$y is not leap year');
  }
}
