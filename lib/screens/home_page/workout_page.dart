import 'package:cross_fit/db/functions/advance_function.dart';
import 'package:cross_fit/db/functions/beginner_function.dart';
import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/db/model/signup_data_model.dart';
import 'package:cross_fit/screens/advance_screens/advance_page.dart';
import 'package:cross_fit/screens/beginner%20_screens/beginner_page.dart';
import 'package:cross_fit/screens/home_page/workout_page_drawer_widget.dart';
import 'package:cross_fit/screens/login&signup/signup_page.dart';
import 'package:flutter/material.dart';
import '../beginner _screens/search.dart';
import '../challenges_screen/fullbody_page.dart';

var datas = signupmodel(
  id: perid,
    name: pername,
    email: peremail,
    phone: perphone,
    password: 'perpassword',
    height: perheight,
    weight: perweight);

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
    getsignup();
    getbeginnerWorkout();
    getAdvanceworkout();
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer_page(),
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
}
