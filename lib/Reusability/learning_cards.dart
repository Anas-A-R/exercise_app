import 'package:flutter/material.dart';

class LearningCard extends StatelessWidget {
  final String text;
  final Color clr;
 LearningCard({ required this.text, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:clr,
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
