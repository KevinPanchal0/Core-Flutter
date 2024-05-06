import 'package:flutter/material.dart';
import '../list.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<Options> listArr = [
  Options(
      icons: Icons.contact_mail_outlined,
      title: 'Contact Info',
      path: '/contact'),
  Options(
      icons: Icons.shopping_bag_outlined,
      title: 'Carrier Objective',
      path: '/carrier'),
  Options(
      icons: Icons.person_outline_outlined,
      title: 'Personal Details',
      path: '/PDetails'),
  Options(
      icons: Icons.e_mobiledata,
      title: 'Education',
      path: '/education'),
  Options(
      icons: Icons.emoji_people_outlined,
      title: 'Experiences',
      path: '/experience'),
  Options(
      icons: Icons.verified_user_outlined,
      title: 'Technical Skills',
      path: '/settings'),
  Options(
      icons: Icons.menu_book_sharp,
      title: 'Interest/Hobbies',
      path: '/settings'),
  Options(
      icons: Icons.bookmark_add,
      title: 'Projects',
      path: '/projects'),
  Options(
      icons: Icons.collections_bookmark_outlined,
      title: 'Achievements',
      path: '/achievement'),
  Options(
      icons: Icons.handshake_rounded,
      title: 'References',
      path: '/references'),
  Options(
      icons: Icons.collections_bookmark_sharp,
      title: 'Declaration',
      path: '/settings'),
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Resume Workspace',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Build Option', style: TextStyle(color: Colors.white)),
          ],
        ),
        toolbarHeight: 150,
      ),
      body: ListView.separated(
        itemCount: listArr.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, listArr[index].path);
            },
            child: ListTile(
              leading: Icon(listArr[index].icons),
              title: Text(listArr[index].title),
              trailing:const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}