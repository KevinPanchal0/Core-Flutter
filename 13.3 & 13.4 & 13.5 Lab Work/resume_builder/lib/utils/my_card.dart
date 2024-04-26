import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  final String title;
  final String hint;
  final int maxLine;
  final double radius;
  const MyCard({super.key, required this.title, required this.hint, required this.maxLine, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
            TextStyle(fontSize: 30, color: Colors.blue),
          ),
          TextFormField(
            maxLines: maxLine,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300
              ),
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(radius)),
            ),
          ),
        ],
      ),
    );
  }
}
