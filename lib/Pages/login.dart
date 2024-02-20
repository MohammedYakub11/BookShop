// import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/components/my_drawer.dart';
import'package:provider/provider.dart';

import '../Provider/counter_provider.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  final _formfield = GlobalKey<FormState>();

  bool passToggle = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var txtUserNameController = TextEditingController();
  var txtUserPwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.lightBlueAccent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),

          child: Stack(
            children: [
              Container(

                padding: EdgeInsets.only( top: 120),
                child: Center(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          'Sign up' ,
                          style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image(image: AssetImage('assets/logo/logo.png'),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35,
                    ),
                    constraints: BoxConstraints(maxWidth: 500),
                    alignment: Alignment.center,
                    child: Form(
                      key: _formfield,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: txtUserNameController,
                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.email_outlined,  color:Color(0xff006fb9)),
                            ),
                            // validator: (value) {
                            //   bool emailValid = RegExp(
                            //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%^&*+_-`'/?={|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            //       .hasMatch(value!);
                            //   if (value.isEmpty) {
                            //     return "Enter Email";
                            //   }
                            //
                            //   if (!emailValid) {
                            //     return "Enter valid Email";
                            //   }
                            // },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: passToggle,
                            keyboardType: TextInputType.emailAddress,
                            controller: txtUserPwdController,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.lock,  color:Color(0xff006fb9)),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(passToggle
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off, color:Color(0xff006fb9)),

                              ),
                            ),
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "Enter Password";
                            //   } else if (passController.text.length < 6) {
                            //     return "Password must be at least 6 characters long";
                            //   }
                            // },
                          ),

                          //
                          SizedBox(
                            height: 50,
                          ),

                          InkWell(
                            onTap: () {
                              if (_formfield.currentState!.validate()) {
                                print('Success');

                              }
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Color(0xff006fb9),
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xff006fb9),
                                    child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        if (_formfield.currentState!.validate()) {
                                          context.read<UserProvider>().signIn(
                                            txtUserNameController.text.toString(),
                                            txtUserPwdController.text.toString(),
                                          );

                                          Navigator.pushNamed(
                                              context, 'Homepage');
                                        }
                                      },
                                      icon: Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
