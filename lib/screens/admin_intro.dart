import 'dart:io';
import 'package:cross_fit/screens/admin_add_workout.dart';
import 'package:cross_fit/screens/admin_edit_workout.dart';
import 'package:flutter/material.dart';

import '../db/functions/db_functions.dart';
import '../db/model/data_model.dart';

class Adminintropage extends StatelessWidget {
  const Adminintropage({
    Key? key, // Add the 'Key' parameter here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: const Text("Admin"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Add Custom Workout ",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create Your own customized workout by  ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SYAM',
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "click on + icon ", 
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SYAM',
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: ValueListenableBuilder(
                  valueListenable: workoutListnotifier,
                  builder: (BuildContext ctx, List<Workoutmodel> workoutList,
                      Widget? child) {
                    return ListView.separated(
                      itemBuilder: (ctx, index) {
                        final data = workoutList[index];
                        return Padding(
                          padding:
                              const EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 170,
                            width: 200,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Image(
                                    width: 130,
                                    image: FileImage(File(data.image))),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Category: ${data.catagory}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Name: ${data.workoutname}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Body Part: ${data.bodypart}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Reps/Time: ${data.reps}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (ctx) { 
                                                return Admineditworkoutpage(
                                                    editmodel: data);
                                              }));
                                            },
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Colors.green,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              print(
                                                  ' delete id======== ${data.id}');
                                              showDialog(
                                                context: context,
                                                builder: (ctx1) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        "Do you want to delete?"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          if (data.id != null) {
                                                            deleteAllworkout(data.id!);
                                                            deleteButtonClickedYes(ctx);
                                                          } else {
                                                            print("Unable to delete");
                                                          }
                                                          Navigator.of(context) .pop();
                                                        },
                                                        child: const Text("Yes"),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text("No"),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return const SizedBox(
                          height: 5,
                        );
                      },
                      itemCount: workoutList.length,
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Adminaddworkoutpage();
                  }));
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  deleteButtonClickedYes(ctx) {
    ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
      content: Text("Successfully Deleted"),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 2),
    ));
  }
}
