// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../model/data_model.dart';

ValueNotifier<List<Workoutmodel>> workoutListnotifier = ValueNotifier([]);

Future<void> addWorkout(Workoutmodel value) async {               //Add all workout
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  final id1 = await workoutDB.add(value);
  value.id = id1;
  getAllworkout();
  print('value id ===${value.id}');
}

Future<void> getAllworkout() async {                              //Read all workout
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  workoutListnotifier.value.clear();
  workoutListnotifier.value.addAll(workoutDB.values);
  // print('db values ===${workoutDB.values}');
  for(var i in workoutDB.values){
    print('all valuesss======  id=${i.id},cate=${i.catagory}, name=${i.workoutname}, body=${i.bodypart},reps=${i.reps},image=${i.image}');
  }
  workoutListnotifier.notifyListeners();
}

Future<void> deleteAllworkout(int id) async {                      //delete workout
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  await workoutDB.delete(id);
  getAllworkout();
}

Future<void> editAllworkout(int id,Workoutmodel value) async {    //Edit workout
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  await workoutDB.put(id, value);
  getAllworkout();
}
