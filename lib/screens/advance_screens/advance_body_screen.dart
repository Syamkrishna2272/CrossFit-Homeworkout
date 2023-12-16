import 'dart:io';

import 'package:cross_fit/db/functions/advance_function.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Advancebodypage extends StatelessWidget {
  List chest;
  final String bodypart;
  Advancebodypage({super.key, required this.bodypart, required this.chest});

  @override
  Widget build(BuildContext context) {
    getAdvanceworkout();
    print(chest);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(bodypart),
      ),
      body: ListView.separated(
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
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'custom'),
                      ),
                      Text(
                        "Reps:${data.reps}",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'custom'),
                      ),
                      Text(
                        "des:${data.description}",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'custom'),
                      )
                      // Text("Reps : ${data.reps}",
                      //     style: TextStyle(
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w400,
                      //         fontFamily: 'custom')),
                      // Text(" ${data.description}",
                      //     style: TextStyle(
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w400,
                      //         fontFamily: 'custom')),
                    ],
                  ),
                ],
              ),
            );
          }),
          separatorBuilder: (ctx, index) {
            return const Divider(
              thickness: 2,
            );
          },
          itemCount: chest.length),
    );
  }
}
