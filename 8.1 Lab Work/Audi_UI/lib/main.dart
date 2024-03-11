import 'package:flutter/material.dart';

void main() {
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
      backgroundColor: Color.fromRGBO(170, 255, 86, 90),
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        shadowColor: Colors.grey.withOpacity(0.9),
        backgroundColor: Color.fromRGBO(130, 225, 86, 90),
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text(
            'My App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: Border(
          top: BorderSide(
            color: Color(0xff689237),
            width: 50
          )
        ),
      ),
      body: Align(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    border: Border.all(
                        width: 20,
                        style: BorderStyle.solid,
                        color: Colors.green),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text.rich(
                        TextSpan(
                          text: "o",
                          style: TextStyle(
                            fontSize: 190,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text.rich(
                        TextSpan(
                          text: "o",
                          style: TextStyle(
                            fontSize: 190,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text.rich(
                        TextSpan(
                          text: "o",
                          style: TextStyle(
                            fontSize: 190,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: Text.rich(
                        TextSpan(
                          text: "o",
                          style: TextStyle(
                            fontSize: 190,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
