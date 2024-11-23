import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellow[50], // Light yellow background
    body: Column(
    children: [
    // Top section with image and background
    Stack(
    children: [
    // Orange and white background
    Column(
    children: [
    Container(
    height: 200,
    color: Colors.orange,
    ),
    Container(
    height: 100,
    color: Colors.white,
    ),
    ],
    ),
    // Circular image
    Positioned(
    top: 100,
    left: MediaQuery.of(context).size.width / 2 - 75,
    child: Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white,
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3),
    ),
    ],
    ),
    child: ClipOval(
    child: Image.asset('assets/images/dish2.png'),// Replace with your image URL
    // fit: BoxFit.cover,
    ),
    ),
    ),
    // ),
    // Back and favorite icons

    Positioned(
    top: 50,
    left: 20,
    child: IconButton(
    icon: Icon(Icons.arrow_back),
    color: Colors.white,
    onPressed: () {},
    ),
    ),
    Positioned(
    top: 50,
    right: 20,
    child: IconButton(
    icon: Icon(Icons.favorite_border),
    color: Colors.white,
    onPressed: () {},
    ),
    ),
    ],
    ),
    // Content below the image
    Expanded(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 80),
    // Title
    Center(
    child: Text(
    'Sei Ua Samun Phrai',
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    SizedBox(height: 10),
    // Time, rating, and calories
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.access_time, color: Colors.grey),
    SizedBox(width: 5),
    Text('50min', style: TextStyle(color: Colors.grey)),
    SizedBox(width: 20),
    Icon(Icons.star, color: Colors.yellow),
    SizedBox(width: 5),
    Text('4.8', style: TextStyle(color: Colors.grey)),
    SizedBox(width: 20),
    Icon(Icons.local_fire_department, color: Colors.red),
    SizedBox(width: 5),
    Text('325 Kcal', style: TextStyle(color: Colors.grey)),
    ],
    ),
    SizedBox(height: 20),
    // Price and counter
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    '\$12',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(width: 20),
    Container(
    decoration: BoxDecoration(
    color: Colors.orange[100],
    borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
    children: [
    IconButton(
    icon: Icon(Icons.remove),
    onPressed: () {},
    ),
    Text('1', style: TextStyle(fontSize: 18)),
    IconButton(
    icon: Icon(Icons.add),
    onPressed: () {},
    ),
    ],
    ),
    ),
    ],
    ),
    SizedBox(height: 20),
    // Ingredients title
    Text(
    'Ingredients',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    // Ingredients list
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    IngredientItem(label: 'Noodle', icon: Icons.ramen_dining),
    IngredientItem(label: 'Shrimp', icon: Icons.fastfood),
    IngredientItem(label: 'Egg', icon: Icons.egg),
    IngredientItem(label: 'Scallion', icon: Icons.grass),
    ],
    ),
    SizedBox(height: 20),
    // About section
    Text(
    'About',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    Text(
    'A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market.',
    style: TextStyle(color: Colors.grey),
    ),
    SizedBox(height: 20),
    ],
    ),
    ),
    ),
    ),
    ],
    ),
    bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Icon(Icons.shopping_bag, color: Colors.orange),
    ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    ),
    child: Text('Add to Cart'),
    ),
    ],
    ),
    ),
    ),
    );
    }
    }

    class IngredientItem extends StatelessWidget {
    final String label;
    final IconData icon;

    const IngredientItem({required this.label, required this.icon});

    @override
    Widget build(BuildContext context) {
    return Column(
    children: [
    CircleAvatar(
    radius: 30,
    backgroundColor: Colors.orange[100],
    child: Icon(icon, color: Colors.orange),
    ),
    SizedBox(height: 5),
    Text(
    label,
    style: TextStyle(color: Colors.grey),
    ),
    ],
    );
  }
}
