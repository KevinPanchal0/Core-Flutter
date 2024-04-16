import 'package:drawer/screen_one.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenOne()));
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
class About_US extends StatelessWidget {
  const About_US({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenOne()));
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: const Center(
        child: Text('About Us'),
      ),
    );
  }
}


class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenOne()));
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: const Center(
        child: Text('Help'),
      ),
    );
  }
}


class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogOut'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenOne()));
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: const Center(
        child: Text('LogOut'),
      ),
    );
  }
}