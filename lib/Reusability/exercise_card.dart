import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String text;
  final Image img;
  final Function() onpressed;

  ExerciseCard({required this.text, required this.img,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 190,
        width: 160,
        decoration: const BoxDecoration(
            color: Colors.white,
            
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: Offset(1, 3),
                  color: Colors.grey),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 90,
                child:img),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            )
          ],
         
        ),
      ),
    );
  }
}
