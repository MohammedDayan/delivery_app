import 'package:delivery_app/widgets/inputfield.dart';
import 'package:delivery_app/widgets/passwordinput.dart';

import 'package:delivery_app/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

// import '../auth/authentication.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final TextEditingController email = TextEditingController();

  final Map<String, String> forminputs = {
    'email': '',
    'password': '',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 165, 200, 229),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      child: Center(
                          child: Column(
                    children: [
                      Text(
                        "Hello Again",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Welcome back you've been missed!"),
                    ],
                  ))),
                  Center(
                    child: Text(
                      "",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                              hintText: "Enter username",
                            ),
                            passwordinputField(
                                onChanged: (value) =>
                                    forminputs['password'] = value,
                                hintText: "Password"),
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
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Color.fromARGB(195, 176, 0, 0)),
                        onPressed: () {
                          //after auth logic
                          //need to change this to named routes later
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ChatScreen()));

                          // forminputs

                          ;
                        },
                        child: Text(
                          "Login",
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
                      onPressed: () async {},
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/google-icon.png")),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Dont have account yet? ",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      InkResponse(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 97, 176),
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
