import 'dart:io';

import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/beginner%20_screens/abs_screen.dart';
import 'package:cross_fit/screens/beginner%20_screens/chest_screen.dart';
import 'package:cross_fit/screens/beginner%20_screens/leg_screen.dart';
import 'package:cross_fit/screens/beginner%20_screens/shoulder_screen.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../db/functions/beginner_function.dart';

List chestlist = [];
List shoulderlist = [];
List leglist = [];
List abslist = [];

// ignore: camel_case_types
class beginner extends StatefulWidget {
  beginner({super.key});

  @override
  State<beginner> createState() => _beginnerState();
}

class _beginnerState extends State<beginner> {
  final List<Map<String, String>> BEGINNERBODYPART = [
    {'title': 'Chest ', 'image': 'assets/images/chest workout.webp'},
    {'title': 'Shoulder ', 'image': 'assets/images/Shoulder.jpg'},
    {'title': 'Leg ', 'image': 'assets/images/Leg.jpg'},
    {'title': 'Abs ', 'image': 'assets/images/abs2.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    getAllworkout();
    getallchest();
    getallshoulder();
    getallleg();
    getallabs();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "Beginner",
          style: TextStyle(fontFamily: 'custom'),
        ),
        actions: [
          
        ],
        centerTitle: true,
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
                            return const Chestscreen();
                          }));
                          break;
                        case 1:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Shoulderscreen();
                          }));
                          break;
                        case 2:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Legscreen();
                          }));
                          break;
                        case 3:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Absscreen();
                          }));
                          break;
                      }
                    },
                    child: Card(
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(BEGINNERBODYPART[index]
                                      ['image'] ??
                                  'assets/images/warm-up-exercises.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
                  ),
                );
              })),
    );
  }
}

class Search extends SearchDelegate {
  List data = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear_rounded))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<Box<Workoutmodel>>(
        future: Hive.openBox<Workoutmodel>('workout_db'),
        builder: (context, snapshot) {
          if(query.isEmpty){
            // return Text("Anthada");
          }
          if (snapshot.hasData) {
            final stdbox = snapshot.data!.values.toList();
            final filteredData = stdbox
                .where((data) => data.workoutname
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
            if (query.isEmpty) {
              return const SizedBox();
            } else if (filteredData.isEmpty) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'No Result',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ],
              );
            }
            return ListView.builder(
              itemBuilder: (ctx, index) {
                final data = filteredData[index];
                String namevalue = data.workoutname;
                if (namevalue.toLowerCase().contains(query.toLowerCase())) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 80,
                          backgroundImage: FileImage(File(data.image)),
                        ),
                        title: Text(
                          data.workoutname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: filteredData.length,
            );
          } else {
            return const SizedBox();
          }
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<Box<Workoutmodel>>(
        future: Hive.openBox<Workoutmodel>('workout_db'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final stdbox = snapshot.data!.values.toList();
            final filteredData = stdbox
                .where((data) => data.workoutname
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
            if (query.isEmpty) {
              return const SizedBox();
            } else if (filteredData.isEmpty) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'No Result ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ],
              );
            }
            return ListView.builder(
              itemBuilder: (ctx, index) {
                final data = filteredData[index];
                String namevalue = data.workoutname;
                if (namevalue.toLowerCase().contains(query.toLowerCase())) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 80,
                          backgroundImage: FileImage(File(data.image)),
                        ),
                        title: Text(
                          data.workoutname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: filteredData.length,
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
