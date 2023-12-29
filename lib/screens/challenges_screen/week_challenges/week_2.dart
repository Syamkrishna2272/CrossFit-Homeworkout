import 'package:cross_fit/screens/challenges_screen/warm_up_page.dart';
import 'package:flutter/material.dart';

import '../fullbody_page.dart';

// ignore: must_be_immutable
class weekTwo extends StatelessWidget {
  weekTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "week 2",
          style: const TextStyle(
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
                  completedWorkout == 7
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 7) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 8
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 8) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 9
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 9) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 10
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 10) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 11
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 11) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 12
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 12) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(Icons.lock)),
                  completedWorkout == 13
                      ? GestureDetector(
                          onTap: () {
                            if (completedWorkout == 13) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return warmUp();
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
                      : CircleAvatar(
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
