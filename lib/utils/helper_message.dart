import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppMessage {
  AppMessage._();

  //toast 메시지 사용
  static void showMessage(String message, {final length, fontSize}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: length,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: fontSize);
  }
}
