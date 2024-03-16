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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('The Wall',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 248,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 128,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 248,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 128,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 248,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 128,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.brown,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 248,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    color: Colors.brown,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
