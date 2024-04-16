import 'package:flutter/material.dart';
import 'other_screens.dart';
import 'user_data.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  UserData userData = UserData(
      email: 'panchalkevin1191@gmail.com',
      accName: 'Kevin Panchal',
      profileImage: 'assets/user.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset(userData.profileImage),
                    ),
                    const Spacer(),
                    Text(userData.accName),
                    const Spacer(),
                    Text(userData.email),
                    const Spacer(),
                  ],
                )
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home_outlined),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingScreen()));
              },
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings_outlined),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const About_US()));
              },
              child: const ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.info_outline),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Help()));
              },
              child: const ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help_outline),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LogOut()));
              },
              child: const ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout),
              ),
            ),


          ],
        ),
      ),
      body: const Center(child: Text('Home Screen')),
    );
  }
}