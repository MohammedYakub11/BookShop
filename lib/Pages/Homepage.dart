import 'package:flutter/material.dart';

import 'package:project/components/my_button.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.lightBlueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.lightBlueAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/logo/logo.png'),
                ),
              ),

              Text(
                "Knowledge is Wisdom",
                style: TextStyle(
                    color: Color(0xff006fb9),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width:175,
                child: MyButton(

                  onTap: () {
                    Navigator.pushNamed(context, 'shop_page');
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text(
                          "Let's get started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.keyboard_double_arrow_right_outlined , color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),

              //show date and time
              //time
            ],
          ),
        ),
      ),
    );
  }
}
