import 'package:flutter/material.dart';
import 'package:resume_builder/utils/my_card.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final dob = TextEditingController();
  final nationality = TextEditingController();
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  int _value = 1;
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
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 35,
              color: Colors.white,
            )),
        title: const Text(
          'Personal Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2,
                    child: MyCard(
                      title: 'DOB',
                      hint: 'DD/MM/YYYY',
                      maxLine: 1,
                      radius: 0,
                      controller: dob,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Marital Status',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.blue)),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      _value = value!;
                                    },
                                  );
                                },
                              ),
                              const Text(
                                'Single',
                                style: TextStyle(fontSize: 21),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      _value = value!;
                                    },
                                  );
                                },
                              ),
                              const Text(
                                'Married',
                                style: TextStyle(fontSize: 21),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Languges Known',
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
                              Text('English')
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
                              Text('Hindi')
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
                              Text('Gujarati')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: MyCard(
                          title: 'Nationality',
                          hint: 'Indian',
                          maxLine: 1,
                          radius: 0,
                          controller: nationality)),
                ),
                OutlinedButton(
                    onPressed: _submitForm, child: const Text('Save Form')),
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
