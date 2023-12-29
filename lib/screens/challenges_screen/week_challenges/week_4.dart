import 'package:cross_fit/screens/challenges_screen/warm_up_page.dart';
import 'package:flutter/material.dart';

import '../fullbody_page.dart';

// ignore: must_be_immutable, camel_case_types
class weekFour extends StatelessWidget {
  const weekFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "week 4",
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
                 completedWorkout == 21
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 21) {
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
                  completedWorkout == 22
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 22) {
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
                  completedWorkout == 23
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 23) {
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
                  completedWorkout == 24
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 24) {
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
                  completedWorkout == 25
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 25) {
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
                  completedWorkout == 26
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 26) {
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
                  completedWorkout == 27
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 27) {
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
