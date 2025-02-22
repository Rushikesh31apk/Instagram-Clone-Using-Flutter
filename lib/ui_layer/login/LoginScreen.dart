import 'package:flutter/material.dart';
import 'package:insta/ui_layer/register/RegisterScreen.dart';
import 'package:insta/widgets/UiHelper.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      UiHelper.CustomTextBotton(
                          text: "Forgot password ?", callback: () {}, size: 12),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                UiHelper.CustomBotton(callback: () {}, text: "Log In"),
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
                        "Don't have an account?",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      UiHelper.CustomTextBotton(
                          text: "Sign Up.",
                          callback: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registerscreen()));
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
