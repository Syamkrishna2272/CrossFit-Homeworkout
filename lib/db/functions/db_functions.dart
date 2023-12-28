// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../model/data_model.dart';

ValueNotifier<List<Workoutmodel>> workoutListnotifier = ValueNotifier([]);

Future<void> addWorkout(Workoutmodel value) async {
  //Add all workout

  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  final id1 = await workoutDB.add(value);
  value.id = id1;
  workoutDB.put(id1, value);
  getAllworkout();
  print('value id ===${value.id}');
}

Future<void> getAllworkout() async {
  //Read all workout

  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  workoutListnotifier.value.clear();
  workoutListnotifier.value.addAll(workoutDB.values);

  workoutListnotifier.notifyListeners();
}

Future<void> deleteAllworkout(int id) async {
  //delete workout

  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  await workoutDB.delete(id);

  getAllworkout();
}

Future<void> editAllworkout(int id, Workoutmodel value) async {
  //Edit workout

  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');

  // await workoutDB.

  await workoutDB.put(id, value);
  getAllworkout();
}

/*Signup page functions  */


