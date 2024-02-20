import 'package:flutter/material.dart';
import 'package:project/Constants.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: Text(
          "Bookshelf",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xff006fb9)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2 * Constants.kPadding,
          vertical: Constants.kPadding,
        ),
        child: Text(
          "Welcome Book Lovers!",
          style: TextStyle(
            color: Color(0xff006fb9),
          ),
        ),
      ),
    ];
