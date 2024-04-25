import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home_screen.dart';
import 'package:resume_builder/screens/inner_navigation/contact_info.dart';
import 'package:resume_builder/screens/settings.dart';
import 'package:resume_builder/screens/splash_screen.dart';

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
        '/contact': (context) =>const ContactInfo(),
      },
    );
  }
}
