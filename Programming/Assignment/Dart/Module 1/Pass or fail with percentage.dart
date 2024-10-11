import 'dart:io';

void main(List<String> args) {
  print('Enter C marks : ');
  var cm = int.parse(stdin.readLineSync()!);

  print('Enter Java marks : ');
  var jm = int.parse(stdin.readLineSync()!);

  print('Enter Php marks : ');
  var pm = int.parse(stdin.readLineSync()!);

  print('Enter Python marks : ');
  var pym = int.parse(stdin.readLineSync()!);

  print('Enter Dart marks : ');
  var dm = int.parse(stdin.readLineSync()!);

  var total = cm + jm + pm + pym + dm;

  var per = total / 5;

  print('Your total is : $total');
  print('Your Percentage is : $per%');

  if (per > 75) {
    print('Distinction');
  } else if (per > 60 || per <= 75) {
    print('First Class');
  } else if (per > 50 || per <= 60) {
    print('Second Class');
  } else if (per > 35 || per <= 50) {
    print('Pass Class');
  } else {
    print('Fail');
  }
}
