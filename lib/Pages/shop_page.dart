import 'package:flutter/material.dart';
import 'package:project/components/book_list.dart';
import 'package:project/components/header.dart';
import 'package:project/components/icons_list.dart';
import 'package:project/components/my_drawer.dart';
import 'package:project/components/new_book.dart';
import "package:project/Constants.dart";
import '../components/app_bar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _handleDrawerItemSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //access products in shop

    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: MyDrawer(onItemSelected: _handleDrawerItemSelection),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            BuildIconsList(context),
            BuildBookList(),
            BuildNewBook(),
            // Divider(
            //   indent: 10,
            //   endIndent: 10,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // Adjust padding as needed
            // Text(
            //   "Categories",
            //   style: TextStyle(
            //     color: Color(0xff006fb9),
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(
            //   height: 5,
            // ),

            // Divider(
            //   indent: 10,
            //   endIndent: 10,
            // ),

          ],
        ),
      ),
    );
  }
}
