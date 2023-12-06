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
    getbeginnerWorkout();
    return Scaffold(
        appBar: AppBar(
          title: Text(bodypart),
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) {
              final data = chest[index];

              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 190,
                  width: 200,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image(width: 130, image: FileImage(File(data.image))),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Description: ${data.description}",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            separatorBuilder: (ctx, index) {
              return SizedBox();
            },
            itemCount: chest.length)
        // body: SafeArea(
        //   child:
        //   // ListView.builder(
        //   //   itemCount: exerciseList.length  ,
        //   //   itemBuilder: (context,index){
        //   //     return ListTile(
        //   //       title: Text(exerciseList[index].name  )
        //   //     );

        //   // }
        //   // )
        //   )
        );
  }
}
