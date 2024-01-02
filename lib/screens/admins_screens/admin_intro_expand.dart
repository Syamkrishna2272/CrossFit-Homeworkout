import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../db/functions/advance_function.dart';
import '../../db/functions/beginner_function.dart';
import '../../db/functions/db_functions.dart';
import '../../db/model/advance_data_model.dart';
import '../../db/model/beginner_data_model.dart';
import '../../db/model/data_model.dart';
import '../challenges_screen/week_challenges/snackbar_page.dart';
import 'admin_edit_workout.dart';

class AdminintroExpanded extends StatelessWidget {
  const AdminintroExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 190,
                        width: 180,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: FileImage(File(data.image)),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Category: ${data.category}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "Name: ${data.workoutname}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "Body Part: ${data.bodypart}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                                            showDialog(
                                              context: context,
                                              builder: (ctx1) {
                                                return AlertDialog(
                                                  title: const Text(
                                                      "Do you want to delete?"),
                                                  actions: [
                                                    TextButton(
                                                      onPressed:
                                                          () async {
                                                        if (data.id !=
                                                            null) {
                                                          deletebeginner(
                                                              data.id!,
                                                              data);
                                                          deleteadvance(
                                                              data.id!,
                                                              data);
                                                          deleteAllworkout(
                                                              data.id!);
                                                          deleteButtonClickedYes(
                                                              ctx);
                                                        } else {
                                                          print(
                                                              "Unable to delete");
                                                        }
                                                        Navigator.of(
                                                                context)
                                                            .pop();
                                                      },
                                                      child: const Text(
                                                          "Yes"),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(
                                                                context)
                                                            .pop();
                                                      },
                                                      child: const Text(
                                                          "No"),
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
                                        TextButton(
                                          onPressed: () {
                                            var val = Beginnermodel(
                                              data.id,
                                              data.image,
                                              data.description,
                                              data.reps,
                                              data.workoutname,
                                            );

                                            var b = Advancemodel(
                                              data.id,
                                              data.image,
                                              data.description,
                                              data.reps,
                                              data.workoutname,
                                            );

                                            workoutchecking(data, val);
                                            Advanceworkoutchecking(
                                                data, b);
                                            ScaffoldMessenger.of(ctx)
                                                .showSnackBar(
                                                    const SnackBar(
                                              content: Text(
                                                  "The workout has been added to your list"),
                                              behavior: SnackBarBehavior
                                                  .floating,
                                              margin:
                                                  EdgeInsets.all(10),
                                              backgroundColor:
                                                  Colors.red,
                                              duration:
                                                  Duration(seconds: 1),
                                            ));
                                          },
                                          child: Text("ADD"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
    );
  }
}