import 'package:flutter/material.dart';
import 'package:resume_builder/utils/my_card.dart';

class References extends StatefulWidget {
  const References({super.key});

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  final references = TextEditingController();
  final designation = TextEditingController();
  final organization = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('References'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left)),
      ),
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      MyCard(
                        title: 'References Name',
                        hint: 'Suresh Shah',
                        maxLine: 1,
                        radius: 10,
                        controller: references,
                      ),
                      MyCard(
                        title: 'Designation',
                        hint: 'Marketing Manager, ID- 342332',
                        maxLine: 1,
                        radius: 10,
                        controller: designation,
                      ),
                      MyCard(
                        title: 'Organization/Institute',
                        hint: 'Green Energy Pvt. Ltd',
                        maxLine: 1,
                        radius: 10,
                        controller: organization,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
