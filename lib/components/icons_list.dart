import 'package:flutter/material.dart';
import 'package:project/Constants.dart';

import '../Pages/book_page.dart';
import '../models/icon_model.dart';
import 'book_list.dart';

final List<IconModel> headerImages = IconModel.icons;

Widget BuildIconsList(context) => Padding(
    padding: const EdgeInsets.only(bottom: Constants.kPadding),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          headerImages.length,
          (index) => Container(
            width: 120,
            child: Column(
              children: [
                Image.asset(
                  headerImages[index].icon,
                  height: 60,
                  width: 80,
                ),
                Text(
                  headerImages[index].title,
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
