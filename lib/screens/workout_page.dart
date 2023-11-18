import 'package:cross_fit/screens/admin_login.dart';
import 'package:cross_fit/screens/advance_page.dart';
import 'package:cross_fit/screens/beginner_page.dart';
import 'package:cross_fit/screens/fullbody_page.dart';
import 'package:cross_fit/screens/information_page.dart';
import 'package:flutter/material.dart';

class Homeworkout extends StatelessWidget {
  const Homeworkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SizedBox(
        width: 230,
        child: Drawer(
            backgroundColor: Colors.black,
            child: ListView(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.info,
                  ),
                  iconColor: Colors.white,
                  title: Text("ABOUT", style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.receipt),
                  iconColor: Colors.white,
                  title: Text("PRIVACY & POLICY ",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  iconColor: Colors.white,
                  title: const Text("PROFILE", style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const PersonalInfo();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  iconColor: Colors.white,
                  title: const Text("ADMIN", style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return Adminloginpage();
                    }));
                  },
                )
              ],
            )),
      ),
      appBar: AppBar(
        title: const Text(
          "Home Workout ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const PersonalInfo();
                    }));
                  },
                  icon: const Icon(Icons.person)),
            ],
          )
        ],
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const Fullbody();
                }));
              },
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/fullbody.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "FULL BODY\n7x4 CHALLENGE ",
                        style: TextStyle(
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
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "BEGINNER",
                  style: TextStyle(
                      fontFamily: 'custom',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const beginner();
                }));
              },
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/beginner.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      spreadRadius: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text("ADVANCED",
                    style: TextStyle(
                        fontFamily: 'custom',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const advance();
                  }));
                },
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advanced.jpg'),
                        fit: BoxFit.cover),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
