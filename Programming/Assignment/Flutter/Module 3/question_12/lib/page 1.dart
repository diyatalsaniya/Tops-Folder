import 'package:flutter/material.dart';
class MyPage1 extends StatefulWidget {
  const MyPage1({super.key, required String title});

  @override
  State<MyPage1> createState() => _MyrestaurantState();
}

class _MyrestaurantState extends State<MyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            CircleAvatar(

              child: Icon(Icons.arrow_back,size: 30,),
            ),

            SizedBox(width: 300,),

            CircleAvatar(
              child: Icon(Icons.search),
            )
          ],
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children:
            [
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text('Restaurant',style: TextStyle(color: Colors.black,fontSize: 25)),
              ),
              Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      width: 70,
                      height: 20,
                      color: Colors.grey,
                      child: Text('20-30 min'),
                    ),
                    SizedBox(width: 10,),
                    Text('2.4 km',style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 10,),
                    Text('Restaurant',style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 100,),
                    Container(
                      width: 60,
                      height: 50,
                      child: Image.asset('assets/images/r.png'),
                    )
                  ]
              ),




              Row(
                children: [
                  SizedBox(width: 8,),
                  Text('Orange Sandwiches is dilicious',style: TextStyle(fontSize: 15),),
                  SizedBox(width: 90,),
                  Icon(Icons.star_border,color: Colors.yellow),
                  Text('4.7'),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  ElevatedButton(onPressed: ()
                  {
                  },
                      child: Text('Recommand')),

                  // SizedBox(width: 10,),
                  ElevatedButton(onPressed: ()
                  {
                  },
                      child: Text('Popular')),
                  //SizedBox(width: 10,),
                  ElevatedButton(onPressed: ()
                  {
                  },
                      child: Text('Noodles')),
                  // SizedBox(width: 20,),
                  ElevatedButton(onPressed: ()
                  {
                  },
                      child: Text('Pizza')),
                ],
              ),



              SizedBox(height: 30,),



              Container(
                color: Colors.white,
                height: 130,
                width: 330,
                child: Row(
                    children: [
                      Image.asset('assets/images/soba-noodle-soup.png'),

                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Column(
                            children: [
                              Text('Soba soup'),
                              Text('No.1 in sales',style: TextStyle(color: Colors.yellow),),
                              Text('12')

                            ]

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110,bottom: 80),
                        child: Icon(Icons.arrow_right),
                      )
                    ]
                ),
              ),



              SizedBox(height: 10,),



              Container(
                color: Colors.white,
                height: 130,
                width: 330,
                child: Row(
                    children: [
                      Image.asset('assets/images/pic2.png'),

                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Column(
                            children: [
                              Text('Sei Ua Samun Phari'),
                              Text('No.1 in sales',style: TextStyle(color: Colors.yellow),),
                              Text('12')

                            ]
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50,bottom: 80),
                        child: Icon(Icons.arrow_right),
                      )
                    ]
                ),
              ),


              SizedBox(height: 10,),

              Container(
                color: Colors.white,
                height: 130,
                width: 330,
                child: Row(
                    children: [
                      Image.asset('assets/images/pasta.png'),

                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Column(
                            children: [
                              Text('Ratatoullie pasta'),
                              Text('No.1 in sales',style: TextStyle(color: Colors.yellow),),
                              Text('16')

                            ]
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 80,bottom: 80),
                        child: Icon(Icons.arrow_right),
                      )
                    ]
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 290),
                child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.orangeAccent,
                    child: Icon(Icons.shopping_bag_outlined)),
              )

            ],
          ),
        )
    );
  }
}


