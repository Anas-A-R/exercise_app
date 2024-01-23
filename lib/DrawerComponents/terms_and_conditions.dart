import 'package:exercise_app/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:page_transition/page_transition.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 50,
                    width: 50,
                    // color: Colors.yellow,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Terms and\ncondition update",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.rule_folder_outlined,
                            color: Colors.blue,
                            size: 130,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Our ",
                              style: TextStyle(fontSize: 17),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Terms and Conditions",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 175,
                                  height: 2,
                                  color: Colors.deepPurple,
                                )
                              ],
                            ),
                            Text(
                              " have been  ",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        Text(
                          "recently updated. To continue using our app,plaese review and agree to our updated terms",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "I have read and\nagree to the Terms",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            GFToggle(
                              enabledThumbColor: Colors.white,
                              enabledTrackColor: Colors.blue,
                              type: GFToggleType.ios,
                              onChanged: (value) {},
                              value: true,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 45,
                            width: double.infinity,
                            child: GFButton(
                              onPressed: () {
                                Navigator.pushReplacement(context, PageTransition(child: HomePage(), type: PageTransitionType.fade,));
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
