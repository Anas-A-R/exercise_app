import 'package:exercise_app/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:page_transition/page_transition.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Rate our App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Center(
              child: Container(
                height: 260,
                width: 260,
                child: Image.asset("assets/images/rate.jpg"),
              ),
            ),
            Text(
              "How Would You\nRate Our App Experience?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7091F5),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RatingBar.builder(
              itemCount: 5,
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              itemSize: 50,
              itemPadding: EdgeInsets.symmetric(horizontal: 5),
              itemBuilder: (context, index) {
                return Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (value) {},
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                width: 150,
                child: GFButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomePage(), type: PageTransitionType.fade));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 17, color: Colors.grey.withOpacity(1.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
