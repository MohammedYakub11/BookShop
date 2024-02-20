import 'package:flutter/material.dart';
import 'package:project/Pages/book_page.dart';

import 'package:project/Pages/login.dart';

import 'package:project/Pages/Homepage.dart';
import 'package:project/Pages/shop_page.dart';
import 'package:project/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

import 'Pages/cart_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'login',
          routes: {
            'login': (context) => MyLogin(),

            'Homepage': (context) => MyHomepage(),
            'shop_page': (context) => ShopPage(),
            'book_page': (context) => BookPage(),
            // 'cart_page': (context) => CartPage(),
          }),
    );
  }
}
