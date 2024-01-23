import 'package:exercise_app/Reusability/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';

class MyProgress extends StatelessWidget {
  const MyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Anas App",
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Progress",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    width: 180,
                    height: 4,
                  color: Colors.black
                  )
                ],
              ),
              SizedBox(height: 50,),
              ProgressBar(
                headingText: 'Warm-up',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '100%',
                percentageClr: Colors.brown,
                barWidth: double.infinity,
              ),
              SizedBox(
                height: 50,
              ),
              ProgressBar(
                headingText: 'Running',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '75%',
                percentageClr: Colors.brown,
                barWidth: 250,
              ),
              SizedBox(
                height: 50,
              ),
              ProgressBar(
                headingText: 'Yoga',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '25%',
                percentageClr: Colors.brown,
                barWidth: 80,
              ),
              SizedBox(
                height: 50,
              ),
              ProgressBar(
                headingText: 'Kegel',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '5%',
                percentageClr: Colors.brown,
                barWidth: 20,
              ),
              SizedBox(
                height: 50,
              ),
              ProgressBar(
                headingText: 'Meditation',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '50%',
                percentageClr: Colors.brown,
                barWidth: 170,
              ),
              SizedBox(
                height: 50,
              ),
              ProgressBar(
                headingText: 'Diet',
                headingClr: Color.fromARGB(255, 7, 7, 7),
                percentage: '90%',
                percentageClr: Colors.brown,
                barWidth: 290,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
