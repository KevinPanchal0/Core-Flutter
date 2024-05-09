import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

List<Map<String, dynamic>> arrForm = [];

class ContactInfo extends StatefulWidget {
  const ContactInfo({
    super.key,
  });

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController textName = TextEditingController();
  final TextEditingController textEmail = TextEditingController();
  final TextEditingController textPhone = TextEditingController();
  final TextEditingController textAddress = TextEditingController();

  XFile? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 35,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
        title: const Text('Resume Workshop'),
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor: Colors.yellow,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('Contact'),
              ),
              Tab(
                child: Text('Photo'),
              ),
            ],
          ),
          SizedBox(
            height: 600,
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                label: Text(
                                  'Name',
                                  style: TextStyle(fontSize: 20),
                                ),
                                hintText: AutofillHints.name,
                                prefixIcon: Icon(Icons.person)),
                            controller: textName,
                            onSaved: (value) {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name Field is Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: textEmail,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: AutofillHints.email,
                              prefixIcon: Icon(Icons.email_outlined),
                              label: Text(
                                'Email',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email Field is Empty';
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                                return 'Enter the Correct Order of Email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: textPhone,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: AutofillHints.telephoneNumber,
                              prefixIcon: Icon(Icons.phone),
                              label: Text(
                                'Phone',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone Field is Empty';
                              } else if (value.length > 10) {
                                return 'No. must be 10 digit long';
                              } else if (value.length < 10) {
                                return 'No. must be 10 digit greater';
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: textAddress,
                            maxLines: 3,
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              hintText: AutofillHints.streetAddressLevel1,
                              prefixIcon: Icon(Icons.location_on_outlined),
                              label: Text(
                                'Address',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone Field is Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          OutlinedButton(
                            onPressed:
                                _submitForm, // Call the _submitForm function when the button is pressed
                            child: const Text('Submit'), // Text on the button
                          ),
                        ],
                      )),
                ),

                  Column(
                    children: [
                      if (_image != null)
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.file(File(_image!.path)),
                      ),
                      TextButton(
                        onPressed: () {
                          _openCameraOrGalley(imageSource:ImageSource.camera);
                        },
                        child:const Text('Open camera'),
                      ),
                      TextButton(
                        onPressed: () {
                          _openCameraOrGalley(imageSource:ImageSource.gallery);
                        },
                        child:const Text('Open gallery'),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      arrForm.add(
        {
          'name': textName.text,
          'email': textEmail.text,
          'phone': textPhone.text,
          'address': textAddress.text,
          'image' : _image!.path,
        },
      );
    }
  }

  Future<void> _openCameraOrGalley({required ImageSource imageSource}) async {
    final XFile? image = await ImagePicker().pickImage(source: imageSource);

    setState(() {
      _image = image;
    });
  }
}
