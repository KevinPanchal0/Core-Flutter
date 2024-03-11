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

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFff5454),
        title: Text('Mix-up',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(45, 50, 0, 0),
              height: 350,
              width: 350,
              color: Colors.yellow,
              child: Container(
                margin: EdgeInsets.fromLTRB(45, 50, 0, 0),
                height: 300,
                width: 300,
                color: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(90, 100, 0, 0),
              height: 300.5,
              width: 303,
              color: Colors.pink,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(90, 100, 50, 10),
              height: 260.5,
              width: 320,
              color: Colors.orange,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(90, 100, 0, 0),
              height: 210.5,
              width: 200,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(110, 130, 0, 0),
              height: 150,
              width: 150,
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}