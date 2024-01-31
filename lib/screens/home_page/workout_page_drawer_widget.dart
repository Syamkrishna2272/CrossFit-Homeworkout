import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/screens/home_page/privacy_policy.dart';
import 'package:cross_fit/screens/login&signup/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../admins_screens/admin_login.dart';
import '../spalsh_page.dart';
import 'bmi_calculator/bmi_calculator.dart';
import 'about_page.dart';
import 'information_page.dart';

class Drawer_page extends StatelessWidget {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  Drawer_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              ListTile(
                  leading: Icon(
                    Icons.info,
                  ),
                  iconColor: Colors.black,
                  title: Text("ABOUT", style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return AboutScreen();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.receipt),
                  iconColor: Colors.black,
                  title: Text("PRIVACY & POLICY ",
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return PrivacyPolicyscreen();
                    }));
                  }),
              ListTile(
                leading: const Icon(Icons.person),
                iconColor: Colors.black,
                title: const Text("PROFILE",
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return PersonalInfo();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.fitness_center),
                iconColor: Colors.black,
                title: const Text("BMI", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return AlertDialog(
                      content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              TextField(
                                controller: _heightController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  labelText: 'Height in cm',
                                  icon: Icon(Icons.accessibility_new),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                controller: _weightController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  labelText: 'Weight in kg',
                                  icon: Icon(Icons.monitor_weight),
                                ),
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.lightBlueAccent.shade100,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  if (_heightController.text.isNotEmpty &&
                                      _weightController.text.isNotEmpty) {
                                    double bmi = calculateBMI();
                                    _heightController.text = '';
                                    _weightController.text = '';
                                    {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                  BMIDetailsScreen(
                                                    bmiValue: bmi,
                                                  )));
                                    }
                                  }
                                },
                                child: const Text("Calculate"),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                iconColor: Colors.black,
                title:
                    const Text("ADMIN", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Adminloginpage();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_rounded),
                iconColor: Colors.black,
                title: const Text("Log Out",
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          content: Text("Do you want to Logout ?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  getsignup();
                                  logout(context);
                                },
                                child: Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("No"))
                          ],
                        );
                      });
                },
              ),
              const ListTile(
                title: Text(
                  "Version 1.2D ",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              )
            ],
          )),
    );
  }

  double calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);
    double heightSquare = height * height;
    double result = weight / heightSquare;
    return result;
  }

  Future<void> logout(BuildContext context) async {
    final sharedpref = await SharedPreferences.getInstance();
    sharedpref.setBool(Keys, false);
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return loginPage();
    }), (route) => false);
  }
}
