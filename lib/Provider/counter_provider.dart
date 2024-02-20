import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String email = "";
  String pwd = "";

  //constructor


  void signIn(String emailTxt, String pwdTxt) {
    email = emailTxt;
    pwd = pwdTxt; //to increment
    notifyListeners(); // called to notify that the data has been changed
  }

}