import 'package:amazon_clone/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(){
      runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page',style: TextStyle(fontSize: 30),),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart,size: 30,),
            )
          ],
        ),
      body:  SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              SizedBox(height: 50,width:190,child: category()),
              SizedBox(height: 50,),
              Container(height: 460,child: row1()),
              Container(height: 460,child: row2()),
            ],
        ),
      ),
    );
  }
}

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 1),
                  blurRadius: 1,
                )
              ]
            ),
            child: const Row(
              children: [
                Text('Select Category',style: TextStyle(fontSize: 20,color: Colors.grey,),),
                Icon(Icons.arrow_drop_down_outlined,color: Colors.grey,),
              ],
            ),
          ),
        ),
    );
  }
}

class row1 extends StatefulWidget {
  const row1({super.key});

  @override
  State<row1> createState() => _row1State();
}

class _row1State extends State<row1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(margin: const EdgeInsets.fromLTRB(0, 0, 140, 0),child: const Text('Smartphones',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),textAlign: TextAlign.left,)),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>detailScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 5),
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.yellow,
                            child: Image.asset(
                              'assets/iphone9.png',
                              fit: BoxFit.fill,
                              height: 100,
                              width: 100,)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('iPhone 9',style: TextStyle(fontSize: 25),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('&299',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 0.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          glow: false,
                          itemPadding: const EdgeInsets.all(4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 40,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>detailScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.grey,
                            blurRadius: 2,
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 200,
                            width: 250,
                            color: Colors.yellow,
                            child: Image.asset(
                              'assets/iphone9.png',
                              fit: BoxFit.fill,
                              height: 100,
                              width: 100,)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('iPhone X',style: TextStyle(fontSize: 25),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('&699',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 0.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          glow: false,
                          itemPadding: const EdgeInsets.all(4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 40,),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class row2 extends StatefulWidget {
  const row2({super.key});

  @override
  State<row2> createState() => _row2State();
}

class _row2State extends State<row2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(margin: const EdgeInsets.fromLTRB(0, 0, 280, 0),child: const Text('Laptops',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),textAlign: TextAlign.left,)),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 5),
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 200,
                          width: 250,
                          color: Colors.yellow,
                          child: Image.asset(
                            'assets/laptop.jpg',
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,)),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Mac',style: TextStyle(fontSize: 25),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('&299',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
                        glow: false,
                        itemPadding: const EdgeInsets.all(4),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 40,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 5),
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 200,
                          width: 250,
                          color: Colors.yellow,
                          child: Image.asset(
                            'assets/laptop.jpg',
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,)),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Hp Victus',style: TextStyle(fontSize: 25),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('&299',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
                        glow: false,
                        itemPadding: const EdgeInsets.all(4),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}