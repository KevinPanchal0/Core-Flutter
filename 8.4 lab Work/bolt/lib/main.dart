import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text('BOLT',style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,
        toolbarHeight: 120,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,

          color: Colors.limeAccent,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: Container(
                // height: ,
                color: Colors.black,
                child: Center(child: Text('⚡',style: TextStyle(fontSize: 90),)),
              ),
            ),
      ),
    );
  }
}