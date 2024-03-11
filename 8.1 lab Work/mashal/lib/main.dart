import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text('Mashal',
          style: TextStyle(
            color: Colors.white,
          ),),
          shadowColor: Colors.black,
          elevation: 30,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('🔥',
              style: TextStyle(
                fontSize: 90,
              ),),
              BrownRectangle(width: 200, height: 100),
              Container(
                height: 300,
                width: 150,
                color: Colors.brown,
              ),
              BrownRectangle(width: 200, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class BrownRectangle extends StatelessWidget {
  final double width;
  final double height;

  const BrownRectangle({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.brown,
    );
  }
}