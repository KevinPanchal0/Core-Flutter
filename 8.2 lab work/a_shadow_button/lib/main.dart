import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A Shadow Button',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(8, 148, 140, 1),
        shadowColor: Colors.black,
        elevation: 30,
      ),

      body: Center(
        child: Container(
              height: 80,
              width: 190,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(8, 148, 140, 1),
                spreadRadius: 5,
                blurRadius: 12,
              ),
            ],
          ),
          child: Center(child: Text('Tap',style: TextStyle(fontSize: 30,),)),
        ),
      ),
    );
  }
}