import 'package:cross_fit/db/functions/beginner_function.dart';
import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/screens/beginner_body_screen.dart';
import 'package:flutter/material.dart';
List chestlist = [];
List shoulderlist=[];
List leglist=[];
List abslist=[];
// ignore: camel_case_types
class beginner extends StatelessWidget {
  beginner({super.key});
  final List<Map<String, String>> BEGINNERBODYPART = [
    // {'title': 'Warm-Up', 'image': 'assets/images/warm-up-exercises.jpg'},
    {'title': 'Chest Beginner', 'image': 'assets/images/chest workout.webp'},
    {'title': 'Shoulder Beginner', 'image': 'assets/images/Shoulder.jpg'},
    {'title': 'Leg Beginner', 'image': 'assets/images/Leg.jpg'},
    {'title': 'Abs Beginner', 'image': 'assets/images/abs2.jpg'},
  ];
 

  @override
  Widget build(BuildContext context) {
    getAllworkout();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Beginner"),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Beginnerbodypage(
                                chest:chestlist, 
                                bodypart:
                                    BEGINNERBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 1: 
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Beginnerbodypage(
                                chest: shoulderlist,
                                bodypart:
                                    BEGINNERBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 2:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Beginnerbodypage(
                                chest:leglist,
                                bodypart:
                                    BEGINNERBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 3:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Beginnerbodypage(
                                chest:abslist,
                                bodypart:
                                    BEGINNERBODYPART[index]['title'] ?? '');
                          }));
                          break;
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(BEGINNERBODYPART[index]
                                      ['image'] ??
                                  'assets/images/warm-up-exercises.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.amber),
                      height: 160,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.black38,
                              child: Text(
                                BEGINNERBODYPART[index]['title']!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'custom',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
