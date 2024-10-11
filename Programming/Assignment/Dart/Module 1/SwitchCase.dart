import 'dart:io';

void main(List<String> args) {
  print('Enter number from 1 to 7 : ');
  var day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print("It's Monday");
      break;

    case 2:
      print("It's Tuesday");
      break;

    case 3:
      print("It's Wednesday");
      break;

    case 4:
      print("It's Thursday");
      break;

    case 5:
      print("It's Friday");
      break;

    case 6:
      print("It's Saturday");
      break;

    case 7:
      print("It's Sunday");
      break;

    default:
      print('INvalid Choice!!!');
  }
}
