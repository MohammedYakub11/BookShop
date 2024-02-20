import 'package:flutter/cupertino.dart';

class BookModel {
  String image;
  String secondImage;
  String title;
  String subtitle;
  bool favorite;

  BookModel({
    required this.image,
    required this.secondImage,
    required this.title,
    required this.subtitle,
    required this.favorite,
  });

// The new book

  static BookModel newBook = BookModel(
    image: "assets/books/new_book_1.jpeg",
    secondImage: "assets/books/new_book_2.jpeg",
    title: "The Book",
    subtitle: "The Author",
    favorite: true,
  );

// List of books

  static List<BookModel> books = [
    BookModel(
      image: "assets/books/book1.png",
      secondImage: "/books/book1.png",
      title: "The Book",
      subtitle: "The Author",
      favorite: false,
    ),
    BookModel(
      image: "assets/books/book2.png",
      secondImage: "/books/book2.png",
      title: "The Book",
      subtitle: "The Author",
      favorite: false,
    ),
    BookModel(
      image: "assets/books/book3.png",
      secondImage: "/books/book3.png",
      title: "The Book",
      subtitle: "The Author",
      favorite: false,
    ),
    BookModel(
      image: "assets/books/book4.png",
      secondImage: "/books/book4.png",
      title: "The Book",
      subtitle: "The Author",
      favorite: false,
    ),
    BookModel(
      image: "assets/books/book5.png",
      secondImage: "/books/book5.png",
      title: "The Book",
      subtitle: "The Author",
      favorite: false,
    ),
  ];
}
