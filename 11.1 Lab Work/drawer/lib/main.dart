import 'package:drawer/screen_one.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        iconTheme:const IconThemeData(
          size: 30,
        ),
        listTileTheme: const ListTileThemeData(
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black
          )
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        )
      ),
      home:const ScreenOne(),
    );
  }
}