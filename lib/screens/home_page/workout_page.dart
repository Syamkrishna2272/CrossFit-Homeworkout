import 'package:cross_fit/db/functions/advance_function.dart';
import 'package:cross_fit/db/functions/beginner_function.dart';
import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/db/model/signup_data_model.dart';
import 'package:cross_fit/screens/bmi_calculator.dart';
import 'package:cross_fit/screens/home_page/privacy_policy.dart';
import 'package:cross_fit/screens/admins_screens/admin_login.dart';
import 'package:cross_fit/screens/advance_screens/advance_page.dart';
import 'package:cross_fit/screens/beginner%20_screens/beginner_page.dart';
import 'package:cross_fit/screens/signup_page.dart';
import 'package:flutter/material.dart';
import '../challenges_screen/fullbody_page.dart';
import 'about_page.dart';
import 'information_page.dart';

var datas = signupmodel(
    name: pername,
    email: peremail,
    phone: perphone,
    password: 'perpassword',
    height: perheight,
    weight: perweight);

class Homeworkout extends StatelessWidget {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  Homeworkout({super.key});
  final List<Map<String, String>> categories = [
    {
      'title': 'FULL BODY\n7x4 CHALLENGE',
      'image': 'assets/images/fullbody.jpg'
    },
    {'title': 'BEGINNER', 'image': 'assets/images/beginner.jpg'},
    {'title': 'ADVANCED', 'image': 'assets/images/advanced.jpg'},
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    getsignup();
    getbeginnerWorkout();
    getAdvanceworkout();
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: SizedBox(
          width: 230,
          child: Drawer(
              backgroundColor: Colors.black,
              child: ListView(
                children: [
                  ListTile(
                      leading: Icon(
                        Icons.info,
                      ),
                      iconColor: Colors.white,
                      title:
                          Text("ABOUT", style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return AboutScreen();
                        }));
                      }),
                  ListTile(
                      leading: Icon(Icons.receipt),
                      iconColor: Colors.white,
                      title: Text("PRIVACY & POLICY ",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return PrivacyPolicyscreen();
                        }));
                      }),
                  ListTile(
                    leading: const Icon(Icons.person),
                    iconColor: Colors.white,
                    title: const Text("PROFILE",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return PersonalInfo();
                      }));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.fitness_center),
                    iconColor: Colors.white,
                    title: const Text("BMI",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return AlertDialog(
                          content: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextField(
                                    controller: _heightController,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      labelText: 'height in cm',
                                      icon: Icon(Icons.accessibility_new),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextField(
                                    controller: _weightController,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      labelText: 'weight in kg',
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
                    iconColor: Colors.white,
                    title: const Text("ADMIN",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return Adminloginpage();
                      }));
                    },
                  ),
                  const ListTile(
                    title: Text(
                      "Version 1.2D ",
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  )
                ],
              )),
        ),
        appBar: AppBar(
          title: const Text(
            "Home Workout ",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: 'custom'),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: Search());
                    },
                    icon: const Icon(Icons.search)),
              ],
            )
          ],
          backgroundColor: Colors.redAccent[700],
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 20, top: 18),
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Fullbody();
                          }));
                        } else if (index == 1) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return beginner();
                          }));
                        } else if (index == 2) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return advance();
                          }));
                        }
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(categories[index]['image']!),
                                fit: BoxFit.cover),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  categories[index]['title']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.black38,
                                    fontFamily: 'custom',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })));
  }

  double calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);
    double heightSquare = height * height;
    double result = weight / heightSquare;
    return result;
  }
}
