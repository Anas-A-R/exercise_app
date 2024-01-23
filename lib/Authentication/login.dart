import 'package:exercise_app/Authentication/register.dart';
import 'package:exercise_app/Reusability/auth_text_field.dart';
import 'package:exercise_app/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFfac04e),
        child: Center(
          child: Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xFF7091F5),
              border: Border.all(
                  style: BorderStyle.solid, color: Color.fromARGB(255, 67, 60, 46), width: 3),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Text(
                    "Login Here",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: HomePage(),
                                type: PageTransitionType.fade));
                      },
                      child: Text(
                        "Login",
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
                      "Don't have an account?",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: Register(),
                                type: PageTransitionType.fade));
                      },
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create account",
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
    );
  }
}
