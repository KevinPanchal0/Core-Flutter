import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(

    home: Home(),
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
        backgroundColor: Colors.red.shade500,
        title: Text('Dark Shadow Button',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          height: 90,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.red.shade500,
                width: 2.0
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.red.shade500,
                blurRadius: 20,
                spreadRadius: 3,
              ),
            ],
          ),

          child: Center(
            child: Text(
              'Tap',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}