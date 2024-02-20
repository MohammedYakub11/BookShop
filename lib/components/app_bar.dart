import 'package:flutter/material.dart';

AppBar buildAppBar()=> AppBar(

  leading: Image.asset(
      'assets/logo/logo.png',
      height:100,
    width:20     // Adjust the height as needed
  ),

  elevation: 0,
  title: Align(
    alignment: Alignment.center,
    child: Text(
      "Book Shop",
      style: TextStyle(
          color: Color(0xff006fb9), fontWeight: FontWeight.bold),
    ),
  ),

);