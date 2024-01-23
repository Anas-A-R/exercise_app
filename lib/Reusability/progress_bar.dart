import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final String headingText;
  final String percentage;
  final Color headingClr;
  final Color percentageClr;
  final double barWidth;

  ProgressBar({ required this.headingText, required this.percentage, required this.headingClr, required this.percentageClr, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color:headingClr, width: 2)),
              child: Container(
                height: 7,
                width: 7,
                
                decoration: BoxDecoration(shape: BoxShape.circle,color: headingClr),
              ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          headingText,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color:headingClr),
        ),
      ],
    ),
            Text(
              percentage,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: percentageClr),
            )
          ],
        ),
         SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 5,
                  width: barWidth,
                  color: Colors.grey,
                ),
                Container(
                  height: 5,
                  width: double.infinity,
                  color: Colors.red,
                )
              ],
            ),
      ],
    );
  }
}
