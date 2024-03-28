import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20%20';

void main(){
  runApp(const MaterialApp(home: task2(),));
}

class task2 extends StatelessWidget {
  const task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My RNW',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
            text: const TextSpan(text: 'Red & White',style: TextStyle(color: Colors.redAccent,fontSize: 75,decoration: TextDecoration.underline,fontWeight: FontWeight.w700,),
                children: [
                  TextSpan(text: '\nMultimedia Educcation',style: TextStyle(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.w700,decoration: TextDecoration.none)),
                  TextSpan(text: '\nShaping \"skills\" for \"scaling\" higher...!!',style: TextStyle(color: Colors.redAccent,fontSize: 25,fontWeight: FontWeight.w700,decoration: TextDecoration.none)),
                ],
            ),

        )
      ),
    );
  }
}
