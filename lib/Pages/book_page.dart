import 'package:flutter/material.dart';
import 'package:project/Constants.dart';
import '../components/book_list.dart';
import '../models/book_model.dart';

class BookPage extends StatefulWidget {
  final List<BookModel> books = BookModel.books;

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Color(0xff006fb9),
            ),
          ),


        ),
        body: Container(
          width: double.infinity,

          child: Column(children: [
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
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
                                height:250,
                                width: 150,
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
                                fontSize: 10,
                                color: Color(0xff006fb9),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ));
  }
}
