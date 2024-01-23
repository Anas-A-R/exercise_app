import 'package:exercise_app/Authentication/login.dart';
import 'package:exercise_app/DrawerComponents/contact_us.dart';
import 'package:exercise_app/DrawerComponents/feedback.dart';
import 'package:exercise_app/DrawerComponents/my_progress.dart';
import 'package:exercise_app/DrawerComponents/rate_this_app.dart';
import 'package:exercise_app/DrawerComponents/terms_and_conditions.dart';
import 'package:exercise_app/HomeComponents/diet_component.dart';
import 'package:exercise_app/HomeComponents/kegel_component.dart';
import 'package:exercise_app/HomeComponents/meditation_component.dart';
import 'package:exercise_app/HomeComponents/running_component.dart';
import 'package:exercise_app/HomeComponents/warm_up_component.dart';
import 'package:exercise_app/HomeComponents/yoga_component.dart';
import 'package:exercise_app/Reusability/drawer_list.dart';
import 'package:exercise_app/Reusability/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      drawer: GFDrawer(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                "My Profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              //////////////////////////////avatar and name and address row////////////////////////////
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF7091F5),
                    child: Icon(
                      FontAwesomeIcons.faceSmile,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Anas Abdul Razzaq",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.locationDot,
                            color: Color(0xFF7091F5),
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Muhammad Ali Park\nShahdra Lahore",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              ////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: MyProgress(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                  text: 'My Progress',
                  icon: FontAwesomeIcons.barsProgress,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Rating(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                  text: 'Rate us on App store',
                  icon: Icons.rate_review_outlined,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: FeedbackComponent(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                  text: 'Feedback',
                  icon: Icons.feedback_outlined,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: ContactUs(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                  text: 'Contact Us',
                  icon: Icons.contacts_outlined,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: TermsAndConditions(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                  text: 'Terms & Conditions',
                  icon: Icons.rule_folder_outlined,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Login(), type: PageTransitionType.fade));
                },
                child: DrawerList(
                    text: "Sign Out",
                    icon: FontAwesomeIcons.arrowRightToBracket),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: const Color(0xFFF5CEB8),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _homepageKey.currentState!.openDrawer();
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 229, 180, 151),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Good Morning\nAnas",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Here",
                          icon: Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Yoga(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Yoga',
                        img: Image.asset("assets/images/yoga.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Kegel(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Kegel',
                        img: Image.asset("assets/images/kegel.jpg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Meditation(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Meditation',
                        img: Image.asset("assets/images/meditation.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Running(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Runing',
                        img: Image.asset("assets/images/running.jpg"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: WarmUp(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Warm Up',
                        img: Image.asset("assets/images/warmUp.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ExerciseCard(
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Diet(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        text: 'Diet Recomendation',
                        img: Image.asset("assets/images/food1.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
