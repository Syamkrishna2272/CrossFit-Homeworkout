
import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/screens/advance_body_screen.dart';
import 'package:cross_fit/screens/beginner_page.dart';
import 'package:flutter/material.dart';

List AdChestlist=[];
List AdShoulderlist=[];
List AdBicepslist=[];
List AdTricepslist=[];
List AdLeglist=[];
List AdWingslist=[];

// ignore: camel_case_types
class advance extends StatelessWidget {
  advance({super.key});
  // ignore: non_constant_identifier_names
  final List<Map<String, String>> ADVANCEBODYPART = [
    {'title': 'Chest', 'image': 'assets/images/advance chest.jpg'},
    {'title': 'Shoulder', 'image': 'assets/images/advance shoulder.jpg'},
    {'title': 'Biceps', 'image': 'assets/images/advance biceps.webp'},
    {'title': 'Triceps', 'image': 'assets/images/advance triceps.jpg'},
    {'title': 'Leg', 'image': 'assets/images/advance leg.jpg'},
    {'title': 'Wings', 'image': 'assets/images/advance wings.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    getAllworkout();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Advance"),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: ADVANCEBODYPART.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest: AdChestlist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 1:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest: AdShoulderlist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 2:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest:AdBicepslist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 3:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest: AdTricepslist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 4:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest: AdLeglist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                        case 5:
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Advancebodypage(
                              chest: AdWingslist,
                                bodypart:
                                    ADVANCEBODYPART[index]['title'] ?? '');
                          }));
                          break;
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ADVANCEBODYPART[index]
                                      ['image'] ??
                                  'assets/images/advance chest.jpg'),
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
                                ADVANCEBODYPART[index]['title']!,
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
