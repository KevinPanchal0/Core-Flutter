import 'package:flutter/material.dart';
import 'package:resume_builder/utils/my_card.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({super.key});

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  final objective = TextEditingController();
  final currentDesignation = TextEditingController();
  final _formkey = GlobalKey<FormState>();

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
        title: const Text('Carrier Objective'),
        toolbarHeight: 150,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Form(
                key: _formkey,
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: MyCard(
                          title: 'Carrier Objective',
                          hint: 'Description',
                          maxLine: 7,
                          radius: 18.0,
                          controller: objective,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: MyCard(
                            title: 'Current Designation',
                            hint: 'Software Eng.',
                            maxLine: 1,
                          radius: 18.0,
                          controller: currentDesignation,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
