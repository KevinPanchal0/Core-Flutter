import 'package:flutter/material.dart';
import 'package:resume_builder/utils/my_card.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Education',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.chevron_left,color: Colors.white,size: 40,)),
      ),
      body: ListView(
        children: [
          Form(
            key: _formkey,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    MyCard(
                      title: 'Course/Degree',
                      hint: 'B. Tech Information Technology',
                      maxLine: 1,
                      radius: 0,
                    ),
                    MyCard(
                      title: 'School/College/Institute',
                      hint: 'Bhagavan Mahavir University',
                      maxLine: 1,
                      radius: 0,
                    ),
                    MyCard(
                      title: 'School/College/Institute',
                      hint: '70%(or) 7.0 CGPA',
                      maxLine: 1,
                      radius: 0,
                    ),
                    MyCard(
                      title: 'Year of Pass',
                      hint: '2019',
                      maxLine: 1,
                      radius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}