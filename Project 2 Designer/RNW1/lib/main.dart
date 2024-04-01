import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Rnw(),
  ));
}

class Rnw extends StatelessWidget {
  const Rnw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Red & White',
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row1(l1: 'G', l2: 'R', l3: 'APHICS', color: Colors.green),
          Row1(l1: 'FLUTT', l2: 'E', l3: 'R', color: Colors.blue),
          Row1(l1: 'AN', l2: 'D', l3: 'ROID', color: Colors.green),
          Row1(l1: 'DESIGN', l2: '&', l3: 'DEVELOP', color: Colors.amberAccent),
          Row1(l1: '', l2: 'W ', l3: 'EB', color: Colors.blueAccent),
          Row1(l1: 'FAS', l2: 'H', l3: 'ION', color: Colors.yellowAccent),
          Row1(l1: 'ANIMAT', l2: 'I', l3: 'ON', color: Colors.cyan),
          Row1(l1: 'I', l2: 'T', l3: 'A-CS+', color: Colors.blueAccent),
          Row1(l1: 'GAM', l2: 'E', l3: '', color: Colors.amberAccent),
        ],
      ),
    );
  }
}


class Row1 extends StatelessWidget {
  const Row1({super.key, required this.l1, required this.l2, required this.l3, required this.color});

  final String l1;
  final String l2;
  final String l3;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            l1,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: color, // Use the color parameter here
              fontSize: 35,
            ),
          ),
        ),
        Text(
          l2,
          style: const TextStyle(
            color: Colors.redAccent, // Use the color parameter here
            fontSize: 45,
          ),
        ),
        Expanded(
          child: Text(
            l3,
            style: TextStyle(
              color: color, // Use the color parameter here
              fontSize: 35,
            ),
          ),
        ),
      ],
    );
  }
}
