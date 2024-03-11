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
        title: Text('Mission of RnW',
            style: TextStyle(
              color: Colors.white,
            ),
        ),
      ),

      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                height: 100,
                width: 15,
                color: Color(0xffff5454),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,10,0),
                  child: Container(
                                height: 100,
                                width: 1,
                                color: Color.fromRGBO(252, 161, 172, 100),
                                child: Center(
                                  child: Text.rich(TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Shaping "skills" for "scaling" higher',
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 18,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ]
                                  ),
                                  ),
                                ),
                              ),
                ))
          ],
        ),
      ),
    );
  }
}