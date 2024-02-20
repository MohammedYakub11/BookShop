import 'package:flutter/material.dart';
import 'package:project/Constants.dart';
import 'package:project/Pages/book_page.dart';

import '../models/book_model.dart';

final List<BookModel> books = BookModel.books;

class BuildBookList extends StatelessWidget {
  const BuildBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff006fb9).withOpacity(0.15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Constants.kPadding,
              horizontal: Constants.kPadding * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Sellers",
                  style: TextStyle(
                    color: Color(0xff006fb9),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookPage(),
                      ),
                    );
                  },
                  child: Text("See all"),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: Color(0xff006fb9),
                    primary: Colors.white,
                    minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: Constants.kPadding * 2,
                    right: Constants.kPadding,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),


                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              books[index].image,
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].title,
                            style: TextStyle(color: Color(0xff006fb9)),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].subtitle,
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff006fb9)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }
}
