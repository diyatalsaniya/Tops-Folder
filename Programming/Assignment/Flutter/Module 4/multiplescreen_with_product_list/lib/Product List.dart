import 'package:flutter/material.dart';
import 'package:multiplescreen_with_product_list/Black%20Flower%20print%20Top.dart';
import 'package:multiplescreen_with_product_list/Black%20T-shirt.dart';
import 'package:multiplescreen_with_product_list/Blue%20Kid%20Shirt.dart';
import 'package:multiplescreen_with_product_list/Brown%20Shirt%20Top.dart';
import 'package:multiplescreen_with_product_list/Brown%20T-shirt.dart';
import 'package:multiplescreen_with_product_list/Maroon%20Top.dart';
import 'package:multiplescreen_with_product_list/Peach%20Top.dart';
import 'package:multiplescreen_with_product_list/Printed%20Kid%20Shirt.dart';
import 'package:multiplescreen_with_product_list/Red%20T-shirt.dart';
import 'package:multiplescreen_with_product_list/Shadded%20Top.dart';
import 'package:multiplescreen_with_product_list/Shirt.dart';
import 'package:multiplescreen_with_product_list/Skyblue%20Shirt.dart';
import 'package:multiplescreen_with_product_list/T-shirt.dart';

class MyProductList extends StatefulWidget {
  const MyProductList({super.key});

  @override
  State<MyProductList> createState() => _MyProductListState();
}

class _MyProductListState extends State<MyProductList> {
  @override
  Widget build(BuildContext context) {

    var img_list = [
      'shirt.png',
      'maroon top.png',
      'peach top.png',
      'shadded top.png',
      'printed kid shirt.png',
      'brown shirt top.png',
      'blue kid shirt.png',
      'brown t-shirt.png',
      'red t-shirt.png',
      'sky blue shirt.png',
      'black flower printed top.png',
      't-shirt.png',
      'black t-shirt.png',
    ];

    var img_name = [
      'Shirt',
      'Maroon Top',
      'Peach Top',
      'Shadded Top',
      'Printed Kid Shirt',
      'Brown Shirt Top',
      'Blue Kid Shirt',
      'Brown T-shirt',
      'Red T-shirt',
      'Skyblue Shirt',
      'Black Flower print Top',
      'T-shirt',
      'Black T-shirt',
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Colors.purpleAccent.shade400,
      ),

      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          hoverColor: Colors.grey.shade400,
          onTap: () {
            if (img_name[index] == 'Shirt') {
              // Navigate to the Maroon Top screen.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Myshirt(), // Navigate to the shirt screen.
                ),
              );
            }


            else if (img_name[index] == 'Maroon Top') {
              // Navigate to the Maroon Top screen.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Mymaroontop(), // Navigate to the MaroonTop screen.
                ),
              );
            }


            else if (img_name[index] == 'Peach Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mypeachtop(),
                ),
              );
            }


            else if (img_name[index] == 'Shadded Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myshaddedtop(),
                ),
              );
            }

            else if (img_name[index] == 'Printed Kid Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myprintedkidshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Brown Shirt Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybrownshirttop(),
                ),
              );
            }

            else if (img_name[index] == 'Blue Kid Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybluekidshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Brown T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mybrowntshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Red T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myredtshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Skyblue Shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myskyblueshirt(),
                ),
              );
            }

            else if (img_name[index] == 'Black Flower print Top') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myblackflowerprinttop(),
                ),
              );
            }

            else if (img_name[index] == 'T-shirt') {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mytshirt(),
                ),
              );
            }

            else {
              // Navigate to the Shirt screen for other products.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myblacktshirt(),
                ),
              );
            }
          },

          leading: Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('assets/images/${img_list[index]}'),
                fit: BoxFit.cover
              ),
            ),
          ),

          title: Container(
              child: Text('${img_name[index]}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
          trailing: Icon(Icons.favorite_border, color: Colors.black,),

        );

      }, separatorBuilder: (context, index) {
        return Divider(height: 5,
        thickness: 2,);
      },
          itemCount: img_list.length),
    );
  }
}
