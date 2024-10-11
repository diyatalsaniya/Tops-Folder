import 'dart:io';

void main() {
  print("Choose a shape to calculate the area:");
  print("1. Triangle");
  print("2. Rectangle");
  print("3. Circle");

  print("Enter your choice from 1-3 : ");
  var choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    // Area of Triangle = 0.5 * base * height
    print("\nEnter the base of the triangle: ");
    double base = double.parse(stdin.readLineSync()!);

    print("Enter the height of the triangle: ");
    double height = double.parse(stdin.readLineSync()!);

    var area = 0.5 * base * height;
    print("The area of the triangle is: $area");
  } else if (choice == 2) {
    // Area of Rectangle = length * breadth
    print("\nEnter the length of the rectangle: ");
    double length = double.parse(stdin.readLineSync()!);

    print("Enter the breadth of the rectangle: ");
    double breadth = double.parse(stdin.readLineSync()!);

    var area = length * breadth;
    print("The area of the rectangle is: $area");
  } else if (choice == 3) {
    // Area of Circle = π * r²
    print("\nEnter the radius of the circle: ");
    double radius = double.parse(stdin.readLineSync()!);

    var pi = 3.14;

    var area = pi * radius * radius;
    print("The area of the circle is: $area");
  } else {
    print("Invalid choice! Please select 1, 2, or 3.");
  }
}
