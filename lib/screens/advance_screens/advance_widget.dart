import 'dart:io';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdvanceWidget extends StatelessWidget {
   AdvanceWidget({super.key, required this.datas, required this.text});

  List datas;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w400,fontFamily: 'custom'),
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      body: ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = datas[index];
                  return Card(
                    color: Colors.transparent,
                    elevation: 15,
                    shadowColor: Colors.grey,
                    child: GestureDetector(
                      onTap: () => print('chest syam ${data.id}'),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name: ${data.workoutname}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'custom'),
                                    ),
                                    Text("Reps : ${data.reps}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'custom')),
                                    Text(" ${data.description}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                            fontFamily: 'custom')),
                                  ],
                                ),
                              )
                            ],
                          ),
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
                itemCount: datas.length),
    );
  }
}
