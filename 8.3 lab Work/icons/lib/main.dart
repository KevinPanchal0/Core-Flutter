import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}
final List<dynamic> arrIcons = [
  {'icon': Icons.exit_to_app},
  {'icon': Icons.play_arrow},
  {'icon': Icons.pause},
  {'icon': Icons.stop},
  {'icon': Icons.cancel},
  {'icon': Icons.delete},
  {'icon': Icons.email},
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icons'),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 12,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Icon(Icons.add,size: 70,),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 3),
                              color: Colors.grey,
                              blurRadius: 10,
                            )
                          ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,

    );
  }
}