import 'package:cross_fit/db/model/beginner_data_model.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/beginner%20_screens/beginner_page.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

// ValueNotifier<List<Beginnermodel>> beginnerListnotifier = ValueNotifier([]);
ValueNotifier<List<Beginnermodel>> chestnotifier = ValueNotifier([]);
ValueNotifier<List<Beginnermodel>> shouldernotifier = ValueNotifier([]);
ValueNotifier<List<Beginnermodel>> legnotifier = ValueNotifier([]);
ValueNotifier<List<Beginnermodel>> absnotifier = ValueNotifier([]);


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 AddchestrWorkout(Beginnermodel value) async {
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  chest.put(value.id, value);
  getallchest();  
}

AddshoulderWorkout(Beginnermodel value) async {
  final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
  shold.put(value.id, value);
  getallshoulder();
}

AddlegWorkout(Beginnermodel value) async {
  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  leg.put(value.id, value);
  getallleg();
}

AddabsWorkout(Beginnermodel value) async {
  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  abs.put(value.id, value);
  getallabs();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallchest() async {
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  chestnotifier.value.clear();
  chestnotifier.value.addAll(chest.values);

  print(chest.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallshoulder() async {
  final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
  shouldernotifier.value.clear();
  shouldernotifier.value.addAll(shold.values);
  print(shold.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallleg() async {
  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  legnotifier.value.clear();
  legnotifier.value.addAll(leg.values);
  print(leg.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallabs() async {
  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  absnotifier.value.clear();
  absnotifier.value.addAll(abs.values);
  print(abs.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

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

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

deletebeginner(int id, Workoutmodel value) async {
  // print('id==${value.id}');

  if (value.category == 'BEGINNER' && value.bodypart == 'Chest') {
    final chest = await Hive.openBox<Beginnermodel>('chest_db');
    chest.delete(id);
    getallchest();
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Shoulder') {
    final shoulder = await Hive.openBox<Beginnermodel>('shoulder_db');
    shoulder.delete(id);
    getallshoulder();
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
    final leg = await Hive.openBox<Beginnermodel>('leg_db');
    leg.delete(id);
    getallleg();
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
    final abs = await Hive.openBox<Beginnermodel>('abs_db');
    abs.delete(id);
    getallabs();
  }
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

workoutchecking(Workoutmodel value, Beginnermodel data) async {
  if (value.category == 'BEGINNER' && value.bodypart == 'Chest') {
    AddchestrWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Shoulder') {
    AddshoulderWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
    AddlegWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
    AddabsWorkout(data);
  }
}

