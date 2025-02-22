import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextBotton(
      {required String text, required VoidCallback callback,required double size }) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: Color(0XFF3797EF)),
        ));
  }

  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool toHide}) {
    return Container(
      width: 342,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          border: Border.all(color: Colors.white24),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              hintStyle: TextStyle(fontSize: 14, color: Color(0XFFFFFFFF))),
        ),
      ),
    );
  }

  static CustomBotton({required VoidCallback callback, required String text}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF3797EF),shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          )),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          )),
    );
  }

  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }
}
