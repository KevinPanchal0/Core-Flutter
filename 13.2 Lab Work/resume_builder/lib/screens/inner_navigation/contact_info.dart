import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

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

  final _formkey = GlobalKey<FormState>();
  int index = 0;
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
            controller: _tabController,
            tabs: const [
              Tab(
               child: Text(
                 'Contact'
               ),
              ),
              Tab(
                child: Text(
                    'Photo'
                ),
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
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name Field is Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
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

                          OutlinedButton(
                            onPressed:
                                _submitForm, // Call the _submitForm function when the button is pressed
                            child: const Text('Submit'), // Text on the button
                          ),
                        ],
                      )),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(38.0),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
    }
  }
}
