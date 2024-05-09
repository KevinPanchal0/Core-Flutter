import 'package:flutter/material.dart';
import 'package:resume_builder/utils/my_card.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  final resume = TextEditingController();
  final roles = TextEditingController();
  final technologies = TextEditingController();
  final pDescription = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 150,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              FocusManager.instance.primaryFocus?.unfocus();
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 35,
              color: Colors.white,
            )),
        title: const Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Column(
                  children: [
                    MyCard(
                        title: 'Project Title',
                        hint: 'Resume Builder App',
                        maxLine: 1,
                        radius: 0,
                        controller: resume),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Technologies',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.blue)),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.blue,
                                  value: v1,
                                  onChanged: (value) {
                                    setState(() {
                                      v1 = value!;
                                    });
                                  }),
                              const Text('C Programing')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.blue,
                                  value: v2,
                                  onChanged: (value) {
                                    setState(() {
                                      v2 = value!;
                                    });
                                  }),
                              const Text('C++')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.blue,
                                  value: v3,
                                  onChanged: (value) {
                                    setState(() {
                                      v3 = value!;
                                    });
                                  }),
                              const Text('Flutter')
                            ],
                          ),
                        ],
                      ),
                    ),
                    MyCard(
                        title: 'Roles',
                        hint: '',
                        maxLine: 1,
                        radius: 0,
                        controller: roles),
                    MyCard(
                        title: 'Technologies',
                        hint: '5 - Programmers',
                        maxLine: 1,
                        radius: 0,
                        controller: technologies),
                    MyCard(
                        title: 'Project Description',
                        hint: 'Enter your Project Description',
                        maxLine: 1,
                        radius: 0,
                        controller: pDescription),
                    OutlinedButton(
                      onPressed: _submitForm,
                      child: const Text('Save Form'),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _submitForm() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
    }
  }
}