import 'package:exercise_app/Authentication/login.dart';
import 'package:exercise_app/Reusability/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Color(0xFF7091F5),
        child: Center(
          child: Container(
            height: 600,
            width: 300,
            decoration: BoxDecoration(
             
              color: Color.fromARGB(255, 230, 178, 75),
              border: Border.all(
                  style: BorderStyle.solid, color: Color.fromARGB(255, 50, 46, 39), width: 3),
              borderRadius: BorderRadius.only(
                
                  topLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "Register Here",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      label: 'Username',
                      icon: FontAwesomeIcons.userDoctor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      label: 'Gender',
                      icon: FontAwesomeIcons.genderless,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      label: 'Age',
                      icon: FontAwesomeIcons.genderless,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                     AuthTextField(
                      label: 'Email',
                      icon: Icons.alternate_email_outlined,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      label: 'Password',
                      icon: Icons.password_outlined,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      label: 'Confirm Password',
                      icon: Icons.password_outlined,
                    ),
                    
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Login(),
                                  type: PageTransitionType.fade));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 65, 117),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    GestureDetector(
                      onTap:  () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Login(),
                                  type: PageTransitionType.fade));
                        },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: const TextStyle(
                              fontSize: 20, color: Color.fromARGB(255, 252, 17, 0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
