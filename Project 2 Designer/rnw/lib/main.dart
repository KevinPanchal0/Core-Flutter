import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rnw(),
    );
  }
}

class Rnw extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Red & White',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text:const TextSpan(
                    text: 'G ',style: TextStyle(fontSize: 28,color: Colors.green),
                   children: <TextSpan>[
                      TextSpan(text: 'R', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                      TextSpan(text: ' APHICS'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 143, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'FLUTT ',style: TextStyle(fontSize: 28,color: Colors.blue),
                     children: <TextSpan>[
                        TextSpan(text: 'E', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' R'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 50, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'AN ',style: TextStyle(fontSize: 28,color: Colors.green),
                      children: <TextSpan>[
                        TextSpan(text: 'D', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' ROID'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 55, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'DESIGN ',style: TextStyle(fontSize: 28,color: Colors.yellowAccent),
                      children: <TextSpan>[
                        TextSpan(text: '&', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' DEVELOP'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 35, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: '',style: TextStyle(fontSize: 28,color: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(text: 'W', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' EB'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 75, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'FAS ',style: TextStyle(fontSize: 28,color: Colors.yellowAccent),
                      children: <TextSpan>[
                        TextSpan(text: 'H', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' ION'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 137, 0),
                  child: RichText(
                    text: TextSpan(
                      text: 'ANIMAT ',style: TextStyle(fontSize: 28,color: Colors.cyan[700],),
                      children: <TextSpan>[
                        TextSpan(text: 'I', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' ON'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 4, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'I ',style: TextStyle(fontSize: 28,color: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(text: 'T', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                        TextSpan(text: ' A-CS+'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 143, 0),
                  child: RichText(
                    text:const TextSpan(
                      text: 'GAM ',style: TextStyle(fontSize: 28,color: Colors.yellowAccent),
                      children: <TextSpan>[
                        TextSpan(text: 'E', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                      ],
                    ),
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
