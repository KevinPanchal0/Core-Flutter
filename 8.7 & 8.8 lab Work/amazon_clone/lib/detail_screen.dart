import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: detailScreen(),
  ));
}

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail Page',style: TextStyle(fontSize: 25),),
        leading: IconButton(
          onPressed: () { Navigator.pop(context); },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart,size: 30,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 870,
          width: double.infinity,
          child: Column(
            children: [
              Positioned(
                bottom: -50,
                child: Container(
                    child: Image.asset('assets/iphonedetail.png',height: 520,fit: BoxFit.cover,)),
              ),
           Container(
             height: 349,
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(40),
                 topRight: Radius.circular(40),
               ),
               boxShadow: [
                 BoxShadow(
                   offset: Offset(0, 0),
                   blurRadius: 12,
                 )
               ]
             ),
             child: const Column(
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,30,0,0),
                      child: Text('Iphone X',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,30,10,0),
                      child: Text('&899',style: TextStyle(fontSize: 20,color: Colors.pinkAccent,fontWeight: FontWeight.w700),),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,0,0),
                      child: Text('Smartphones',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,0,10,0),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Text('4.44')
                        ],
                      )
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,10,0,0),
                      child: Text('Brand',style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,10,10,0),
                      child: Text('Apple',style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w700),),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,10,0,0),
                      child: Text('Stock',style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,10,10,0),
                      child: Text('34',style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 320, 0),
                      child: Text('Description',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(style: TextStyle(fontSize: 16),'Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording'),
                    )
                  ],
                )
              ],
             ),
           ),
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add_shopping_cart),
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
    );

  }
}
