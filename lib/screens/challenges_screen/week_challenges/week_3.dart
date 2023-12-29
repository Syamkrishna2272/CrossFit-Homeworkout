import 'package:cross_fit/screens/challenges_screen/warm_up_page.dart';
import 'package:flutter/material.dart';

import '../fullbody_page.dart';

// ignore: must_be_immutable, camel_case_types
class weekThree extends StatelessWidget {
  const weekThree ({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "week 3",
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'custom',
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
        Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 45,
                runSpacing: 30,
                children: [
                   completedWorkout == 14
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 14) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 15
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 15) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 16
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 16) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 17
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 17) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '4',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 18
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 18) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 19
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 19) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 20
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 20) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const warmUp();
                              }));
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Text(
                              '7',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'custom'),
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
