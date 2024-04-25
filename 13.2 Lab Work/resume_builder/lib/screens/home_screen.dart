import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Resume Builder'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/settings');
          }, icon: const Icon(Icons.settings_outlined))
        ],
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
