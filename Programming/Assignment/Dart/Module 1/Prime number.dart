import 'dart:io';

void main(List<String> args) {
  print('Enter number : ');
  var num = int.parse(stdin.readLineSync()!);

  var prime = 0;

  for (int i = 0; i <= num; i++) {
    if (num % i == 0) {
      prime++;
    }
  }
  if (prime == 2) {
    print('$num is Prime number');
  } else {
    print('$num is not prime number');
  }
}
