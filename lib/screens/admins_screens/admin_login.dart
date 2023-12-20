import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/screens/admins_screens/admin_intro.dart';

import 'package:cross_fit/screens/workout_page.dart';
import 'package:flutter/material.dart';

class Adminloginpage extends StatefulWidget {
  const Adminloginpage({Key? key}) : super(key: key);

  @override
  State<Adminloginpage> createState() => _AdminloginpageState();
}

class _AdminloginpageState extends State<Adminloginpage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isUsernameEmpty = true;
  bool isPasswordEmpty = true;
  bool formSubmitted = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    getAllworkout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) {
                          return Homeworkout();
                        }),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Admin",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'custom',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter username';
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_box_sharp),
                          labelText: "Username:",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: isUsernameEmpty
                                    ? Colors.red
                                    : Colors.blue),
                          ),
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter password';
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          
                          labelText: "Password:",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isPasswordEmpty || !formSubmitted
                                  ? Colors.red
                                  : Colors.blue,
                            ),
                          ),
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (ctx) {
                        return Adminintropage();
                      }));
                  // if (_formKey.currentState!.validate()) {
                  //   if (_usernameController.text == 'Admin' &&
                  //       _passwordController.text == '1234') {
                  //     Navigator.of(context)
                  //         .pushReplacement(MaterialPageRoute(builder: (ctx) {
                  //       return Adminintropage();
                  //     }));
                  //   }
                  // }
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "NEXT ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "This is only for Admins",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SYAM',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
