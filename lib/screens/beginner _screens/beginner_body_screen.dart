import 'dart:io';
import 'package:flutter/material.dart';

import '../../db/functions/beginner_function.dart';



class Exercise {
  final String bodyPart;

  Exercise({
    required this.bodyPart,
  });
}

// ignore: must_be_immutable
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
          backgroundColor: Colors.redAccent[700],
          title: Text(
            bodypart,
            style:const TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) {
              final data = chest[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Image(
                            width: 200, image: FileImage(File(data.image)))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${data.workoutname}",
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'custom'),
                        ),
                        Text("Reps : ${data.reps}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'custom')),
                        Text(" ${data.description}",
                            style: const TextStyle(
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
              return const Divider(
                thickness: 1,
                color: Colors.black,
              );
            },
            itemCount: chest.length));
  }
}
