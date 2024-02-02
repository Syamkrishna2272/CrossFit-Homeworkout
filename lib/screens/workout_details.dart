import 'dart:io';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class workoutdetails extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final filteredData;
  const workoutdetails({super.key, this.filteredData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 2.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'custom'),
          ),
          backgroundColor: Colors.redAccent[700],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  height: 280,
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.teal,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: FileImage(File(filteredData.image!)),
                                  fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            spacing: 150,
                            children: [
                              Text(
                                'Name :  ${filteredData.workoutname}',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'custom',
                                    color: Colors.white),
                              ),
                              Text(
                                'Reps: ${filteredData.reps}',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'custom',
                                    color: Colors.white),
                              ),
                              Text(
                                'Description: ${filteredData.description}',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'custom',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
