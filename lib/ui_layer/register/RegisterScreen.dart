import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/ui_layer/login/LoginScreen.dart';

import '../../widgets/UiHelper.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController reTypePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgUrl: "instaname.png"),
                SizedBox(
                  height: 25,
                ),
                UiHelper.CustomTextField(
                    controller: email, text: "Email", toHide: false),
                SizedBox(
                  height: 15,
                ),
                UiHelper.CustomTextField(
                    controller: password, text: "Password", toHide: true),
                SizedBox(
                  height: 15,
                ),
                UiHelper.CustomTextField(
                    controller: reTypePassword, text: "Re Enter Password", toHide: true),

                SizedBox(
                  height: 30,
                ),
                UiHelper.CustomBotton(callback: () {}, text: "Sign Up"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imgUrl: "fb.png"),
                    UiHelper.CustomTextBotton(
                        text: "Log in with Facebook", callback: () {}, size: 14),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      UiHelper.CustomTextBotton(
                          text: "Sign In.",
                          callback: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreen()));
                          },
                          size: 14)
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
