import 'package:flutter/material.dart';


class DrawerList extends StatelessWidget {
  final String text;
  final IconData icon;


  DrawerList({required this.text, required this.icon, });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 215, 107, 234),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
