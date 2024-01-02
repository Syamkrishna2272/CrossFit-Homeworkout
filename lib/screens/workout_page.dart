import 'package:cross_fit/db/functions/beginner_function.dart';
import 'package:cross_fit/screens/about_page.dart';
import 'package:cross_fit/screens/privacy_policy.dart';
import 'package:cross_fit/screens/admins_screens/admin_login.dart';
import 'package:cross_fit/screens/advance_screens/advance_page.dart';
import 'package:cross_fit/screens/beginner%20_screens/beginner_page.dart';
import 'package:cross_fit/screens/information_page.dart';
import 'package:flutter/material.dart';

import 'challenges_screen/fullbody_page.dart';

class Homeworkout extends StatelessWidget {
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
    getbeginnerWorkout();
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
                    title: Text("ABOUT", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return AboutScreen();
                      }));
                    }
                    
                  ),
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
                    }
                        
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    iconColor: Colors.white,
                    title: const Text("PROFILE",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return  PersonalInfo();
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
                      style: TextStyle(color: Colors.white),
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
                    icon: Icon(Icons.search)),
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
}
