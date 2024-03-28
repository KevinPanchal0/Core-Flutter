import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: Screen(),));
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.redAccent,
      ),
    body: const Center(
      child: Text(
        textAlign: TextAlign.center,
        'Red & White Group of Institutes \n One Step in Changing Eductaion Chain...',
        style: TextStyle(fontSize: 24,color: Colors.redAccent),
      ),
    ),
    );
  }
}
