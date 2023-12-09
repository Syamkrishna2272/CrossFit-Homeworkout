import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../db/functions/beginner_function.dart';

class Exercise {
  final String bodyPart;

  Exercise({
    required this.bodyPart,
  });
}

class Beginnerbodypage extends StatelessWidget {
  List chest;
  final String bodypart;

  Beginnerbodypage({super.key, required this.bodypart, required this.chest});

  @override
  Widget build(BuildContext context) {
    print(chest);
    getbeginnerWorkout();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(bodypart),
        ),
        body: 
        ListView.separated(
            itemBuilder: ((context, index) {
              final data = chest[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(width: 200, image: FileImage(File(data.image))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${data.workoutname}",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'custom'),
                        ),
                        Text("Reps : ${data.reps}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom')),
                        Text(" ${data.description}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom')),

                                Text(" ${data.id}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom')),
                      ],
                    ),
                  ],
                ),
              );
            }),
            separatorBuilder: (ctx, index) {
              return SizedBox();
            },
            itemCount: chest.length)
            );
  }
}
