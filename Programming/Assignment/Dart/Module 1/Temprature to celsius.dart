import 'dart:io';

void main(List<String> args) {
  print('Enter temprature in degree celsius : ');
  double cel = double.parse(stdin.readLineSync()!);

  // Convert Celsius to fahrenheit
  double fahrenheit = (cel * 9 / 5) + 32;

  print('$cel °C is equal to $fahrenheit °F');
}
