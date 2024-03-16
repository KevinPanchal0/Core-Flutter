import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
final List<Map<String, dynamic>> arrItems = [
  {'title': 'Exit', 'icon': Icons.exit_to_app},
  {'title': 'Play', 'icon': Icons.play_arrow},
  {'title': 'Pause', 'icon': Icons.pause},
  {'title': 'Stop', 'icon': Icons.stop},
  {'title': 'Close', 'icon': Icons.cancel},
  {'title': 'Delete', 'icon': Icons.delete},
  {'title': 'Email', 'icon': Icons.email},
];
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
      'Map',
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.blue.shade700,
    centerTitle: true,
    shadowColor: Colors.black,
    elevation: 12,
        leading: Icon(Icons.menu,size: 30,color: Colors.white,),
    ),


    body: ListView.builder(
      itemCount: arrItems.length,
      itemBuilder: (BuildContext context, int index)
      {
        final item = arrItems[index];
        return Container(
          height: 90,

          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(5, 2),
                blurRadius: 5,
              )
            ]
          ),
          child: ListTile(
              title: Text(item['title'],style: TextStyle(
                fontSize: 20,
              ),),
              trailing: Icon(item['icon'],size: 30,),
              contentPadding: EdgeInsets.all(20),

            ),
        );
      },
    ),
    );
  }
}
