import 'package:exercise_app/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:page_transition/page_transition.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg4.jpg"),fit: BoxFit.cover,filterQuality: FilterQuality.high)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              children: [
                
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Container(
                        width: 160,
                        height: 4,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(180),
                      ),
                      border: Border.all(color: Colors.purpleAccent, width: 3)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.phone,
                            size: 25,
                            color: Color.fromARGB(255, 4, 129, 231),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "0335-0658278",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email,
                            size: 25,
                            color: Color.fromARGB(255, 4, 129, 231),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "anasrazaq850@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 25,
                            color: Color.fromARGB(255, 4, 129, 231),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Muhammad ali park\nshahdra lahore",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
      
                      ////////////////////////now developing 3 text fields///////////////////////
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        // color: Colors.yellow,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 130,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 130,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Message",
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 40,
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, PageTransition(child: HomePage(), type: PageTransitionType.fade));
                                },
                                style: ButtonStyle(
                                  side: MaterialStatePropertyAll(
                                      BorderSide(color: Colors.purpleAccent)),
                                  backgroundColor: MaterialStatePropertyAll(
                                    Colors.white,
                                  ),
                                ),
                                child: Text("Send Message"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
