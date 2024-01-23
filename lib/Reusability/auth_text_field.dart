import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
 
  final String label;
  final IconData icon;

  AuthTextField({ required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            labelText: label,
            labelStyle:
                TextStyle(fontSize: 15, color: Colors.black),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white,
            prefixIcon: Icon(icon,size: 18,),
            prefixIconColor: Colors.grey,
            
            border: InputBorder.none),
      ),
    );
  }
}