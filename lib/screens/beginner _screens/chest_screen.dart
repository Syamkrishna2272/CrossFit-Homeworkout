import 'dart:io';
import 'package:flutter/material.dart';
import '../../db/functions/beginner_function.dart';

class Chestscreen extends StatelessWidget {
  const Chestscreen({super.key});

  @override
  Widget build(BuildContext context) {
    getallchest();
    return Scaffold(
      // backgroundColor: Colors.grey[400], 
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Chest ",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      body: ValueListenableBuilder(
          valueListenable: chestnotifier,
          builder: (context, chestlist, child) {
            return ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = chestlist[index];
                  return GestureDetector(
                    onTap: () => print('chest syam ${data.id}'),
                    child: Card(
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
                                      style: const TextStyle(
                                          fontSize: 16, 
                                          fontWeight: FontWeight.w300, 
                                          fontFamily: 'custom'  
                                          
                                          ),
                                    ),
                                    Text("Reps : ${data.reps}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'custom' 
                                            )),
                                    Text(" ${data.description}", 
                                        style: const TextStyle(
                                            fontSize: 15  ,
                                            fontWeight: FontWeight.w200,
                                           fontFamily: 'custom' 
                                            )),
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
                itemCount: chestlist.length);
          }),
    );
  }
}
