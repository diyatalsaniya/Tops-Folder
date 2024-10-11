void main() {
  // Create a list of fruits
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // Display the original list
  print("Original list of fruits: $fruits");

  // Add a fruit to the list
  fruits.add('Mango');
  print("After adding Mango: $fruits");

  // Remove a fruit from the list
  fruits.remove('Banana');
  print("After removing Banana: $fruits");

  // Iterate through the list and display each fruit
  print("Fruits in the list:");
  for (var fruit in fruits) {
    print(fruit);
  }
}
