import 'package:flutter/material.dart';

import '../../utils/my_card.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final cname = TextEditingController();
  final school = TextEditingController();
  final roles = TextEditingController();
  final dob = TextEditingController();
  int _value = 1;
  int _index = 0;
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
          'Experience',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: MyCard(
                      title: 'Company Name',
                      hint: 'New Enterprise',
                      maxLine: 1,
                      radius: 0,
                      controller: cname,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: MyCard(
                          title: 'School/College/Institute',
                          hint: 'Quality Test Engineer',
                          maxLine: 1,
                          radius: 0,
                          controller: school)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: MyCard(
                          title: 'Roles(Optional)',
                          hint: '',
                          maxLine: 3,
                          radius: 0,
                          controller: roles)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Employed Status'),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                        _index = 0;
                                      });
                                    },
                                  ),
                                  const Text('Previously Employed'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                        _index = 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              const Text('Currently Employed'),
                            ],
                          ),
                          IndexedStack(
                            index: _index,
                            children: [
                              SizedBox(
                                height: 90,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const Text('Date Joined'),
                                          TextFormField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.w300),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(1)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const Text('Exit Joined'),
                                          TextFormField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.w300),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(1)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const Text('Date Joined'),
                                          TextFormField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.w300),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(1)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        children: [],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: _submitForm,
                  child: const Text('Save Form'),
                ),
              ],
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
