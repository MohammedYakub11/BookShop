import 'package:flutter/material.dart';
import 'package:project/Constants.dart';
import 'package:project/models/book_model.dart';

import '../Pages/book_page.dart';

class BuildNewBook extends StatelessWidget {
  final newBook = BookModel.newBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 2 * Constants.kPadding, vertical: Constants.kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot New Releases",
                style: TextStyle(
                    color: Color(0xff006fb9),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        InkWell(

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.kPadding),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        newBook.image,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2 * Constants.kPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            newBook.title,
                            style: TextStyle(
                              color: Color(0xff006fb9),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            newBook.subtitle,
                            style: TextStyle(
                              color: Color(0xff006fb9),
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
