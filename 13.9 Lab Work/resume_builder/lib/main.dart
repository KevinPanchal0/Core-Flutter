import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home_screen.dart';
import 'package:resume_builder/screens/inner_navigation/achievements.dart';
import 'package:resume_builder/screens/inner_navigation/carrier.dart';
import 'package:resume_builder/screens/inner_navigation/contact_info.dart';
import 'package:resume_builder/screens/inner_navigation/education.dart';
import 'package:resume_builder/screens/inner_navigation/experience.dart';
import 'package:resume_builder/screens/inner_navigation/presonal_details.dart';
import 'package:resume_builder/screens/inner_navigation/projects.dart';
import 'package:resume_builder/screens/inner_navigation/references.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>const SplashScreen(),
        '/home': (context) =>const HomeScreen(),
        '/settings': (context) =>const Settings(),
        '/contact': (context) =>const ContactInfo(),
        '/carrier': (context) =>const CarrierObjective(),
        '/education': (context) =>const Education(),
        '/references': (context) =>const References(),
        '/PDetails': (context) =>const PersonalDetails(),
        '/experience': (context) =>const Experience(),
        '/projects': (context) =>const Projects(),
        '/achievement': (context) =>const Achievement(),
      },
    );
  }
}