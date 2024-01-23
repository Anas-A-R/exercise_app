import 'package:exercise_app/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:page_transition/page_transition.dart';

class FeedbackComponent extends StatefulWidget {
  @override
  State<FeedbackComponent> createState() => _FeedbackComponentState();
}

class _FeedbackComponentState extends State<FeedbackComponent> {
  Color clr1 = Colors.white;
  Color clr2 = Colors.white;
  Color clr3 = Colors.white;

  Color textclr1 = Colors.black;
  Color textclr2 = Colors.black;
  Color textclr3 = Colors.black;
  @override
  Widget build(BuildContext context) {
    // Color clr=Colors.white;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Feedback",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          leading: GFIconButton(
              color: Colors.transparent,
              // hoverColor: Colors.red,
              // focusColor: Colors.red,
              // disabledColor: Colors.red,
              // highlightColor: Colors.red,
              // splashColor: Colors.red,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Did you achieve your goal?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (clr2 == Colors.blue ||
                        clr3 == Colors.blue ||
                        textclr2 == Colors.black ||
                        textclr3 == Colors.black) {
                      clr3 = Colors.white;
                      clr2 = Colors.white;
                      clr1 = Colors.blue;

                      textclr3 = Colors.black;
                      textclr2 = Colors.black;
                      textclr1 = Colors.white;
                    } else {
                      clr1 = Colors.blue;
                      textclr1 = Colors.white;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: clr1, border: Border.all(color: Colors.black)),
                  child: Text(
                    "Yes",
                    style: TextStyle(fontSize: 25, color: textclr1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (clr1 == Colors.blue ||
                        clr3 == Colors.blue ||
                        textclr1 == Colors.black ||
                        textclr3 == Colors.black) {
                      clr1 = Colors.white;
                      clr3 = Colors.white;
                      clr2 = Colors.blue;

                      textclr1 = Colors.black;
                      textclr3 = Colors.black;
                      textclr2 = Colors.white;
                    } else {
                      clr2 = Colors.blue;
                      textclr2 = Colors.white;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: clr2, border: Border.all(color: Colors.black)),
                  child: Text(
                    "Partially",
                    style: TextStyle(fontSize: 25, color: textclr2),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (clr1 == Colors.blue ||
                        clr2 == Colors.blue ||
                        textclr1 == Colors.black ||
                        textclr2 == Colors.black) {
                      clr1 = Colors.white;
                      clr2 = Colors.white;
                      clr3 = Colors.blue;

                      textclr1 = Colors.black;
                      textclr2 = Colors.black;
                      textclr3 = Colors.white;
                    } else {
                      clr3 = Colors.blue;
                      textclr3 = Colors.white;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: clr3, border: Border.all(color: Colors.black)),
                  child: Text(
                    "No",
                    style: TextStyle(fontSize: 25, color: textclr3),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What was the reason for your visit?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  // color: Colors.cyan,
                ),
                child: TextField(
                  maxLines: null,
                  minLines: 4,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Please give your reason",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please describe why was you could not achieve your goal?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  // color: Colors.cyan,
                ),
                child: TextField(
                  maxLines: null,
                  minLines: 4,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Describe here",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: double.infinity,
                child: GFButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomePage(), type: PageTransitionType.fade));
                  },
                  child: Text(
                    "Send Feedback",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
