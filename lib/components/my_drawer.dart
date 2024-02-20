import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Pages/shop_page.dart';
import '../Provider/counter_provider.dart';

class MyDrawer extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const MyDrawer({super.key, required this.onItemSelected});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 14.0,
      child: ListView(
        children: [
          DrawerHeader(

      child: Text( context.watch<UserProvider>().email,
        style: TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xff006fb9),
        ),

      ),

      ),

            ListTile(
            leading: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.white : Color(0xff006fb9),
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.white : null,
              ),
            ),
            onTap: () {
              _onItemTapped(0);
              // Navigator.pop(context);
              Navigator.pushNamed(context, 'shop_page');
            },
            tileColor: _selectedIndex == 0 ? Color(0xff006fb9) : null,
            selectedTileColor: Colors.white,
          ),
           ListTile(
            leading: Icon(
              Icons.account_box,
              color: _selectedIndex == 2 ? Colors.white : Color(0xff006fb9),
            ),
            title: Text(
              "Account Details",
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.white : Color(0xff006fb9),
              ),
            ),
            onTap: () {
              _displayBottomSheet(context);
              _onItemTapped(2);
            },
            tileColor: _selectedIndex == 2 ? Color(0xff006fb9) : null,
            selectedTileColor: Colors.white,
          ),
           Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: _selectedIndex == 3 ? Colors.white : Color(0xff006fb9),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                  color: _selectedIndex == 3 ? Colors.white : Color(0xff006fb9),
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'login', (route) => false);

              },
            ),
          ),
        ],
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (context) => Container(
        height: 200,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Your Account Details\n\n Happy Shopping'),
          SizedBox(height: 25),
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close_rounded)),
        ]),
      ),
    );
  }
}
