import 'package:delivery_app/screens/signin_screen.dart';
import 'package:delivery_app/widgets/passwordinput.dart';
import 'package:flutter/material.dart';

import '../widgets/inputfield.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/signup_screen";

  SignUpScreen({super.key});
  final TextEditingController email = TextEditingController();

  final Map<String, String> forminputs = {
    'firstname': '',
    'lastname': '',
    'email': '',
    'password': '',
    'confirmpassword': '',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 100, width: 100, child: Center(child: Text(""))),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Create New Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            inputField(
                              onChanged: (value) => forminputs['email'] = value,
                              hintText: "Enter email",
                            ),
                            inputField(
                                onChanged: (value) =>
                                    forminputs['firstname'] = value,
                                hintText: "First Name"),
                            inputField(
                                onChanged: (value) =>
                                    forminputs['lastname'] = value,
                                hintText: "Last Name"),
                            passwordinputField(
                                onChanged: (value) =>
                                    forminputs['password'] = value,
                                hintText: "Enter password"),
                            passwordinputField(
                                onChanged: (value) =>
                                    forminputs['confirmpassword'] = value,
                                hintText: "Confirm password"),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Container(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(195, 176, 0, 0)),
                        onPressed: () {
                          print(forminputs);
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
                  SizedBox(
                    height: 12,
                  ),
                  Center(child: Text("Or")),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height:
                        40, // reminder to make width and height size resposive to screen size instead.
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        print("hi");
                      },
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/google-icon.png")),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 97, 176)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account ? ",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      InkResponse(
                        onTap: () {
                          print("smth tapped");
                          Navigator.pushNamed(context, SignInScreen.routeName);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => SignInScreen(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 97, 176),
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
