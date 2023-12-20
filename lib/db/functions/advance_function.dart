import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/advance_screens/advance_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../model/advance_data_model.dart';

ValueNotifier<List<Advancemodel>> Chestadvance = ValueNotifier([]);
ValueNotifier<List<Advancemodel>> Shoulderadvance = ValueNotifier([]);
ValueNotifier<List<Advancemodel>> Bicepsadvance = ValueNotifier([]);
ValueNotifier<List<Advancemodel>> Tricepsadvance = ValueNotifier([]);
ValueNotifier<List<Advancemodel>> Legadvance = ValueNotifier([]);
ValueNotifier<List<Advancemodel>> Wingsadvance = ValueNotifier([]);

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Chestadding(Advancemodel value) async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  chest.put(value.id, value);
  Getallchest();
}

Shoulderadding(Advancemodel value) async {
  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  shoulder.put(value.id, value);
  Getallshoulder();
}

Bicepsadding(Advancemodel value) async {
  final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
  Biceps.put(value.id, value);
  Getallbiceps();
}

Tricepsadding(Advancemodel value) async {
  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  Triceps.put(value.id, value);
  Getalltriceps();
}

Legadding(Advancemodel value) async {
  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  Leg.put(value.id, value);
  Getallleg();
}

Wingsadding(Advancemodel value) async {
  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  Wings.put(value.id, value);
  Getallwings();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Getallchest() async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  Chestadvance.value.clear();
  Chestadvance.value.addAll(chest.values);
  print(chest.values);
}

Getallshoulder() async {
  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  Shoulderadvance.value.clear();
  Shoulderadvance.value.addAll(shoulder.values);
  print(shoulder.values);
}

Getallbiceps() async {
  final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
  Bicepsadvance.value.clear();
  Bicepsadvance.value.addAll(Biceps.values);
  print(Biceps.values);
}

Getalltriceps() async {
  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  Tricepsadvance.value.clear();
  Tricepsadvance.value.addAll(Triceps.values);
  print(Triceps.values);
}

Getallleg() async {
  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  Legadvance.value.clear();
  Legadvance.value.addAll(Leg.values);
  print(Leg.values);
}

Getallwings() async {
  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  Wingsadvance.value.clear();
  Wingsadvance.value.addAll(Wings.values);
  print(Wings.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getAdvanceworkout() async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  AdChestlist.clear();
  AdChestlist.addAll(chest.values);

  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  AdShoulderlist.clear();
  AdShoulderlist.addAll(shoulder.values);

  final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
  AdBicepslist.clear();
  AdBicepslist.addAll(Biceps.values);

  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  AdTricepslist.clear();
  AdTricepslist.addAll(Triceps.values);

  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  AdLeglist.clear();
  AdLeglist.addAll(Leg.values);

  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  AdWingslist.clear();
  AdLeglist.addAll(Wings.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


  deleteadvance(int id, Workoutmodel value) async {
  if (value.category == 'ADVANCE' && value.bodypart == 'Chest') {
    final chest = await Hive.openBox<Advancemodel>('chests_db');
    chest.delete(id);
    Getallchest();
  } else if (value.category == 'ADVANCE' && value.bodypart == 'Shoulder') {
    final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
    shoulder.delete(id);
    Getallshoulder();
  } else if (value.category == 'ADVANCE' && value.bodypart == 'Biceps') {
    final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
    Biceps.delete(id);
    Getallbiceps();
  } else if (value.category == 'ADVANCE' && value.bodypart == 'Triceps') {
    final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
    Triceps.delete(id);
    Getalltriceps();
  } else if (value.category == 'ADVANCE' && value.bodypart == 'Leg') {
    final Leg = await Hive.openBox<Advancemodel>('legs_db');
    Leg.delete(id);
    Getallleg();
  } else if (value.category == 'ADVANCE' && value.bodypart == 'Wings') {
    final Wings = await Hive.openBox<Advancemodel>('wings_db');
    Wings.delete(id);
    Getallwings();
  }
}


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// ignore: non_constant_identifier_names
Advanceworkoutchecking(Workoutmodel value, Advancemodel data) async {
  if (value.category == 'ADVANCED' && value.bodypart == 'Chest') {
    Chestadding(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Shoulder') {
    Shoulderadding(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Biceps') {
    Bicepsadding(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Triceps') {
    Tricepsadding(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Leg') {
    Legadding(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Wings') {
    Wingsadding(data);
  }
}
