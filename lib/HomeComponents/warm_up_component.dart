
import 'package:exercise_app/Reusability/learning_cards.dart';
import 'package:flutter/material.dart';

class WarmUp extends StatelessWidget {
  const WarmUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 450,
            width: double.infinity,
           color: Color(0xFFEDB7ED),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                         color: Color.fromARGB(255, 194, 146, 194),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Warm-up",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "3-10 MIN course",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Live hapier and healthier\nby learning the fundamentals\nof warm-up and mindfulness",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 150,
                          width: 130,
                          child: Image.asset("assets/images/warmUp.png"))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LearningCard(
                        text: "Session 1",
                      clr: Color(0xFFEDB7ED),
                      ),
                      LearningCard(
                        text: "Session 2",
                         clr: Color(0xFFEDB7ED),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LearningCard(
                        text: "Session 3",
                  clr: Color(0xFFEDB7ED),
                      ),
                      LearningCard(
                        text: "Session 4",
                      clr: Color(0xFFEDB7ED),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LearningCard(
                        text: "Session 5",
                     clr: Color(0xFFEDB7ED),
                      ),
                      LearningCard(
                        text: "Session 6",
                   clr: Color(0xFFEDB7ED),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LearningCard(
                        text: "Session 7",
                 clr: Color(0xFFEDB7ED),
                      ),
                      LearningCard(
                        text: "Session 8",
                     clr: Color(0xFFEDB7ED),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Warm-up",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    child: Container(
                       padding: EdgeInsets.all(5),
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                               
                                height: 70,
                                width: 70,
                                child:
                                    Image.asset("assets/images/warmUp.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Basics",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Start your practice",
                                  style: TextStyle(
                                      fontSize: 15, ),
                                ),
                              ],
                            ),
                            Icon(Icons.lock,color: Colors.grey,size: 40,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
