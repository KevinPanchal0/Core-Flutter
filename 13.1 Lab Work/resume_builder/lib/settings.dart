import 'package:flutter/material.dart';
import 'list.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<Options> listArr = [
  Options(icons: Icons.contact_mail_outlined, title: 'Contact Info'),
  Options(icons: Icons.shopping_bag_outlined, title: 'Carrier Objective'),
  Options(icons: Icons.person_outline_outlined, title: 'Presonal Details  '),
  Options(icons: Icons.e_mobiledata, title: 'Education'),
  Options(icons: Icons.emoji_people_outlined, title: 'Experiences'),
  Options(icons: Icons.verified_user_outlined, title: 'Technical Skills'),
  Options(icons: Icons.menu_book_sharp, title: 'Interest/Hobbies'),
  Options(icons: Icons.bookmark_add, title: 'Projects'),
  Options(icons: Icons.collections_bookmark_outlined, title: 'Achievements'),
  Options(icons: Icons.handshake_rounded, title: 'References'),
  Options(icons: Icons.collections_bookmark_sharp, title: 'Declaration'),
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 65),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 50,
                color: Colors.white,
              )),
        ),
        title: const Padding(
          padding: EdgeInsets.all(28.0),
          child: Column(
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
        ),
        toolbarHeight: 150,
      ),
      body: ListView.separated(
        itemCount: listArr.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(listArr[index].icons),
              title: Text(listArr[index].title),
              trailing: const Icon(
                Icons.chevron_right,
              ),
            ),
          );
        },
      ),
    );
  }
}