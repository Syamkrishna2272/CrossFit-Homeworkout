import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

import '../../db/model/data_model.dart';
import '../workout_details.dart';

class Search extends SearchDelegate {
  List data = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear_rounded))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<Box<Workoutmodel>>(
        future: Hive.openBox<Workoutmodel>('workout_db'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final stdbox = snapshot.data!.values.toList();
            final filteredData = stdbox
                .where((data) => data.workoutname
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
            if (query.isEmpty || filteredData.isEmpty) {
              return Center(
                child: Lottie.asset(
                    'assets/animation/Animation - 1706848553710.json',
                    width: 200,
                    height: 200),
              );
            } else if (filteredData.isEmpty) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'No Result',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ],
              );
            }
            return ListView.builder(
              itemBuilder: (ctx, index) {
                final data = filteredData[index];
                String namevalue = data.workoutname;
                if (namevalue.toLowerCase().contains(query.toLowerCase())) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return workoutdetails(filteredData: data);
                          }));
                        },
                        leading: CircleAvatar(
                          radius: 80,
                          backgroundImage: FileImage(File(data.image)),
                        ),
                        title: Text(
                          data.workoutname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: filteredData.length,
            );
          } else {
            return const SizedBox();
          }
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<Box<Workoutmodel>>(
        future: Hive.openBox<Workoutmodel>('workout_db'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final stdbox = snapshot.data!.values.toList();
            final filteredData = stdbox
                .where((data) => data.workoutname
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
            if (query.isEmpty) {
              return const SizedBox();
            } else if (filteredData.isEmpty) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'No Result ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ],
              );
            }
            return ListView.builder(
              itemBuilder: (ctx, index) {
                final data = filteredData[index];
                String namevalue = data.workoutname;
                if (namevalue.toLowerCase().contains(query.toLowerCase())) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 85,
                          backgroundImage: FileImage(File(data.image)),
                        ),
                        title: Text(
                          data.workoutname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: filteredData.length,
            );
          } else {
            return const SizedBox();
          }
        });
  }
}