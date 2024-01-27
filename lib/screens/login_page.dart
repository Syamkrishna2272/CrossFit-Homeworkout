import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/screens/home_page/workout_page.dart';
import 'package:cross_fit/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'intro_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _UsernameController = TextEditingController();
  final _PasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: TextFormField(
                          controller: _UsernameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Username";
                            }
                            return null;
                          },
                          textCapitalization: TextCapitalization.words,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.account_box_sharp,
                                color: Colors.black),
                            labelText: "Username :",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: TextFormField(
                          controller: _PasswordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            }
                            return null;
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.black,
                            ),
                            labelText: "Password :",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom'),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        loginfun(_UsernameController.text.trim(),
                            _PasswordController.text.trim());
                      },
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.red),
                          backgroundColor: Colors.black54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontFamily: 'custom',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: const Text(
                              "Do you want Create a new account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SYAM',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (ctx) {
                                    return SignupScreen();
                                  }));
                                },
                                child: const Text(
                                  "Signup",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontFamily: 'custom',
                                      fontWeight: FontWeight.w400),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  loginfun(name1, password1) async {
    for (var i = 0; i < logCheck.length; i++) {
      if (logCheck[i].name == name1 && logCheck[i].password == password1) {
        if (_formKey.currentState!.validate()) {
          final sharedpref = await SharedPreferences.getInstance();
           sharedpref.setBool(Keys, true);
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (ctx) {
            return Homeworkout();
          }));
        }
      }
    }
  }
}
