import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<int> arrNumber = [1,2,3,4,5,6,7,8,9,10];
int i=arrNumber.length;



class _HomeState extends State<Home> {
  void increment(){
    setState(() {
      i = i+1;
    arrNumber.add(i);
    print(i);
    });
  }


  void decrement(){
        setState(() {
          arrNumber.remove(i);
          if(i==0){
            i=0;
          }
          else
            {

              i = i-1;
              print(i);
            }
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 15,
        backgroundColor: Color.fromRGBO(40, 76, 100, 1),
      ),

      body: ListView.builder(itemBuilder: (context, index){
        bool isEven = (index%2==0);
       return Column(
         children: [
           Container(

            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: (isEven) ? Colors.blue : Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 9,
                      )
                    ]
                  ),

                  child: Center(
                    child: Text('${arrNumber[index]}',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),),
                  )),
            ),
           ),

         ],

       );
      },
      itemCount: arrNumber.length,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(onPressed: (){
              increment();
            },

              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(0, 0, 128, 1),
              shape: CircleBorder(),
            ),
          ),
          SizedBox(width: 15,),
          SizedBox(
              height: 70,
              width: 70,
            child: FloatingActionButton(onPressed: (){decrement();},
              child: Icon(
                  Icons.horizontal_rule,
                size: 30,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(0, 0, 128, 1),
              shape: CircleBorder(),),
          )
        ],
      ),
    );
  }
}