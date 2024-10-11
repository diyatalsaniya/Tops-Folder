import 'dart:io';

void main(List<String> args) {
  print('Enter Number1 : ');
  var num1 = int.parse(stdin.readLineSync()!);
  print('Enter Number2 : ');
  var num2 = int.parse(stdin.readLineSync()!);
  print('Enter Number3 : ');
  var num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    if (num1 > num3) {
      print('$num1 is max!!');
    } else {
      print('$num3 is max!!');
    }
  } else if (num2 > num3) {
    if (num2 > num1) {
      print('$num2 is max!!');
    } else {
      print('$num1 is max!!');
    }
  } else {
    print('$num3 is max!!');
  }
}
