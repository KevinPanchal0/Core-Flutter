import 'package:flutter/material.dart';

import 'home_screen.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Jersey10',
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: 10,
              )
            ),
            foregroundColor: MaterialStatePropertyAll(
              Colors.greenAccent,
            ),
            backgroundColor: MaterialStatePropertyAll(
              Colors.orangeAccent,
            )
          )
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: CountUpPage(),
    );
  }
}