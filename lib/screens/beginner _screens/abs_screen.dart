import 'dart:io';

import 'package:cross_fit/db/functions/beginner_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Absscreen extends StatelessWidget {
  const Absscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Abs",
          style: TextStyle(fontWeight: FontWeight.w400 ,fontFamily: 'custom'),
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      body: ValueListenableBuilder(
          valueListenable: absnotifier,
          builder: (context, abslist, child) {
            return ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = abslist[index];
                  return Card(
                    color: Colors.transparent,
                    elevation: 15,
                    shadowColor: Colors.grey,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: FileImage(File(data.image!)),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              width: double.infinity,
                              // color: Colors.yellow ,
                              child: Column(
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
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: abslist.length);
          }),
    );
  }
}
