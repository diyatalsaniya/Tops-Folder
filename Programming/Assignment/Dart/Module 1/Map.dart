void main() {
  // Create a map of fruits with their prices
  Map<String, double> fruitPrices = {
    'Apple': 1.50,
    'Banana': 0.80,
    'Orange': 1.20,
  };

  // Display the original map
  print("Original map of fruit prices: $fruitPrices");

  // Add a new fruit to the map
  fruitPrices['Mango'] = 1.75;
  print("After adding Mango: $fruitPrices");

  // Update the price of an existing fruit
  fruitPrices['Banana'] = 0.85;
  print("After updating Banana's price: $fruitPrices");

  // Remove a fruit from the map
  fruitPrices.remove('Apple');
  print("After removing Apple: $fruitPrices");

  // Check if a fruit is in the map
  if (fruitPrices.containsKey('Orange')) {
    print("The price of Orange is \$${fruitPrices['Orange']}");
  } else {
    print("The map does not contain Orange.");
  }

  // Iterate through the map and display each fruit and its price
  print("Fruits and their prices:");
  fruitPrices.forEach((fruit, price) {
    print('$fruit: \$${price}');
  });
}
