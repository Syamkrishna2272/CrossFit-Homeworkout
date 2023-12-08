import 'package:cross_fit/db/model/beginner_data_model.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/beginner_page.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<Beginnermodel>> beginnerListnotifier = ValueNotifier([]);

// ignore: non_constant_identifier_names
AddbeginnerWorkout(Beginnermodel value) async {
  List a = [];
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  a.clear();
  for (var i in chest.values) {
    a.add(i.Chestbeginner);
  }

  a.add(value);
  final data = Beginnermodel(a, [], [], [], value.id, value.image,
      value.description, value.reps, value.workoutname);
  chest.add(data);

  // chest.put(value.id, data);

  print(chest.values);
  getbeginnerWorkout();
}

getbeginnerWorkout() async {
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  chestlist.clear();
  chestlist.addAll(chest.values);

  final shoulder = await Hive.openBox<Beginnermodel>('shoulder_db');
  shoulderlist.clear();
  shoulderlist.addAll(shoulder.values);

  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  leglist.clear();
  leglist.addAll(leg.values);

  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  abslist.clear();
  abslist.addAll(abs.values);
}

deletebeginner(int id, Workoutmodel value) async {
  if (value.category == 'BEGINNER' &&
      value.bodypart == 'Chest' &&
      value.id == id) {
    final chest = await Hive.openBox<Beginnermodel>('chest_db');
    chest.delete(id);
    getbeginnerWorkout();
  } else if (value.category == 'BEGINNER' &&
      value.bodypart == 'Shoulder' &&
      value.id == id) {
    final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
    shold.delete(id);
    getbeginnerWorkout();
  } else if (value.category == 'BEGINNER' &&
      value.bodypart == 'Leg' &&
      value.id == id) {
    final legg = await Hive.openBox<Beginnermodel>('leg_db');
    legg.delete(id);
    getbeginnerWorkout();
  } else if (value.category == 'BEGINNER' &&
      value.bodypart == 'Abs' &&
      value.id == id) {
    final Abs = await Hive.openBox<Beginnermodel>('abs_db');
    Abs.delete(id);
    getbeginnerWorkout();
  }
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

workoutchecking(Workoutmodel value, Beginnermodel data) async {
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
  final legg = await Hive.openBox<Beginnermodel>('leg_db');
  final Abs = await Hive.openBox<Beginnermodel>('abs_db');
  print("haaaai");

  if (value.category == 'BEGINNER' && value.bodypart == 'Chest') {
    print("haaaai");
    AddbeginnerWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Shoulder') {
    shoulder(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
    leg(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
    abs(data);
  }
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shoulder(Beginnermodel value) async {
  List a = [];
  final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
  a.clear();
  for (var i in shold.values) {
    a.add(i.Shoulderbeginner);
  }

  a.add(value);
  final data = Beginnermodel([], a, [], [], value.id, value.image,
      value.description, value.reps, value.workoutname);
  shold.add(data);
  // shold.put(value.id, data);

  print(shold.values);
  getbeginnerWorkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

leg(Beginnermodel value) async {
  List a = [];
  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  a.clear();
  for (var i in leg.values) {
    a.add(i.Legbeginenr);
  }

  a.add(value);
  final data = Beginnermodel([], [], a, [], value.id, value.image,
      value.description, value.reps, value.workoutname);
  leg.add(data);

  print(leg.values);
  getbeginnerWorkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

abs(Beginnermodel value) async {
  List a = [];
  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  a.clear();
  for (var i in abs.values) {
    a.add(i.Absbeginner);
  }

  a.add(value);
  final data = Beginnermodel([], [], [], a, value.id, value.image,
      value.description, value.reps, value.workoutname);
  abs.add(data);

  print(abs.values);
  getbeginnerWorkout();
}
