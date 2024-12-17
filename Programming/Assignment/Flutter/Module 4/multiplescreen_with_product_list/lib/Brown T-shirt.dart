import 'package:flutter/material.dart';
class Mybrowntshirt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade900,
        ),
        body: Column(
          children: [
            SizedBox(width: 500,),
            SizedBox(height: 50,),

            Container(
                child: Image.asset('assets/images/brown t-shirt.png',height: 200,)
            ),
            SizedBox(height: 10,),

            Text('₹299',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('MRP ₹399 (25% off)',style: TextStyle( fontSize: 18,color: Colors.black),),

            SizedBox(height: 10,),

            Text('Price inclusive of all taxes',style: TextStyle( fontSize: 17,color: Colors.black),),
            Text('Select Size  -> XS  S  M  L  XL  XXL',style: TextStyle( fontSize: 20,color: Colors.black),),

            SizedBox(height: 20,),

            Text(' Product Details :',style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
           // Text('Single button squared cuffs',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Package contains: 1 shirt',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Machine wash ',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Cotton Blend',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Relaxed Fit',style: TextStyle( fontSize: 20,color: Colors.black),),
            Text('Product Code: 443048945074',style: TextStyle( fontSize: 20,color: Colors.black),)
          ],
        )
    );
  }
}
