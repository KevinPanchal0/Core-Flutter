import 'package:flutter/material.dart';
import 'package:resume_builder/home_screen.dart';
import 'package:resume_builder/settings.dart';
import 'package:resume_builder/splash_screen.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>const SplashScreen(),
        '/home': (context) =>const HomeScreen(),
        '/settings': (context) =>const Settings(),
      },
    );
  }
}
