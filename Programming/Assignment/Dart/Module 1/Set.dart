void main() {
  // Create a set of fruits
  Set<String> fruits = {'Apple', 'Banana', 'Orange'};

  // Display the original set
  print("Original set of fruits: $fruits");

  // Add a fruit to the set
  fruits.add('Mango');
  print("After adding Mango: $fruits");

  // Attempt to add a duplicate fruit
  fruits.add('Apple');
  print("After trying to add duplicate Apple: $fruits");

  // Remove a fruit from the set
  fruits.remove('Banana');
  print("After removing Banana: $fruits");

  // Check if a fruit is in the set
  if (fruits.contains('Orange')) {
    print("The set contains Orange.");
  } else {
    print("The set does not contain Orange.");
  }

  // Iterate through the set and display each fruit
  print("Fruits in the set:");
  for (var fruit in fruits) {
    print(fruit);
  }
}
