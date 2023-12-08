import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/advance_page.dart';
import 'package:hive/hive.dart';

import '../model/advance_data_model.dart';

Addadvanceworkout(Advancemodel value) async {
  List b = [];
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  b.clear();
  for (var i in chest.values) {
    b.add(i.Chest);
  }

  b.add(value);
  final data = Advancemodel(b, [], [], [], [], [], value.id, value.image,
      value.description, value.workoutname, value.reps);
  chest.add(data);
  print(chest.values);
  getAdvanceworkout();
}

getAdvanceworkout() async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  AdChestlist.clear();
  AdChestlist.addAll(chest.values);

  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  AdShoulderlist.clear();
  AdShoulderlist.addAll(shoulder.values);

  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  AdTricepslist.clear();
  AdTricepslist.addAll(Triceps.values);

  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  AdLeglist.clear();
  AdLeglist.addAll(Leg.values);

  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  AdWingslist.clear();
  AdWingslist.addAll(Wings.values);
}

deleteadvance(int id, Workoutmodel value) async {
  if (value.category == 'ADVANCED' &&
      value.bodypart == 'Chest' &&
      value.id == id) {
    final chest = await Hive.openBox<Advancemodel>('chests_db');
    chest.delete(id);
    getAdvanceworkout();
  } else if (value.category == 'ADVANCED' &&
      value.bodypart == 'Shoulder' &&
      value.id == id) {
    final shold = await Hive.openBox<Advancemodel>('shoulders_db');
    shold.delete(id);
    getAdvanceworkout();
  } else if (value.category == 'ADVANCED' &&
      value.bodypart == 'Biceps' &&
      value.id == id) {
    final bicep = await Hive.openBox<Advancemodel>('biceps_db');
    bicep.delete(id);
    getAdvanceworkout();
  } else if (value.category == 'ADVANCED' &&
      value.bodypart == 'Triceps' &&
      value.id == id) {
    final tricep = await Hive.openBox<Advancemodel>('triceps_db');
    tricep.delete(id);
    getAdvanceworkout();
  } else if (value.category == 'ADVANCED' &&
      value.bodypart == 'Shoulder' &&
      value.id == id) {
    final leg = await Hive.openBox<Advancemodel>('legs_db');
    leg.delete(id);
    getAdvanceworkout();
  } else if (value.category == 'ADVANCED' &&
      value.bodypart == 'Shoulder' &&
      value.id == id) {
    final wing = await Hive.openBox<Advancemodel>('wings_db');
    wing.delete(id);
    getAdvanceworkout();
  }
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Advanceworkoutchecking(Workoutmodel value, Advancemodel data) async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  final shold = await Hive.openBox<Advancemodel>('shoulders_db');
  final bicep = await Hive.openBox<Advancemodel>('biceps_db');
  final tricep = await Hive.openBox<Advancemodel>('triceps_db');
  final leg = await Hive.openBox<Advancemodel>('legs_db');
  final wing = await Hive.openBox<Advancemodel>('wings_db');
  print("haaaai");

  if (value.category == 'ADVANCED' && value.bodypart == 'Chest') {
    print("haaaai");
    Addadvanceworkout(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Shoulder') {
    shoulder(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Biceps') {
    biceps(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Triceps') {
    triceps(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Leg') {
    legs(data);
  } else if (value.category == 'ADVANCED' && value.bodypart == 'Wings') {
    wings(data);
  }
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shoulder(Advancemodel value) async {
  List b = [];
  final shold = await Hive.openBox<Advancemodel>('shoulders_db');
  b.clear();
  for (var i in shold.values) {
    b.add(i.Shoulder);
  }

  b.add(value);
  final data = Advancemodel([], b, [], [], [], [], value.id, value.image,
      value.description, value.workoutname, value.reps);
  shold.add(data);
  // shold.put(value.id, data);

  print(shold.values);
  getAdvanceworkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

biceps(Advancemodel value) async {
  List b = [];
  final bicep = await Hive.openBox<Advancemodel>('biceps_db');
  b.clear();
  for (var i in bicep.values) {
    b.add(i.Biceps);
  }

  b.add(value);
  final data = Advancemodel([], [], b, [], [], [], value.id, value.image,
      value.description, value.workoutname, value.reps);
  bicep.add(data);
  // shold.put(value.id, data);

  print(bicep.values);
  getAdvanceworkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

triceps(Advancemodel value) async {
  List b = [];
  final tricep = await Hive.openBox<Advancemodel>('triceps_db');
  b.clear();
  for (var i in tricep.values) {
    b.add(i.Triceps);
  }

  b.add(value);
  final data = Advancemodel([], [], [], b, [], [], value.id, value.image,
      value.description, value.workoutname, value.reps);
  tricep.add(data);
  // shold.put(value.id, data);

  print(tricep.values);
  getAdvanceworkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

legs(Advancemodel value) async {
  List b = [];
  final leg = await Hive.openBox<Advancemodel>('legs_db');
  b.clear();
  for (var i in leg.values) {
    b.add(i.Leg);
  }

  b.add(value);
  final data = Advancemodel([], [], [], [], b, [], value.id, value.image,
      value.description, value.workoutname, value.reps);
  leg.add(data);
  // shold.put(value.id, data);

  print(leg.values);
  getAdvanceworkout();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

wings(Advancemodel value) async {
  List b = [];
  final wing = await Hive.openBox<Advancemodel>('wings_db');
  b.clear();
  for (var i in wing.values) {
    b.add(i.Wings);
  }

  b.add(value);
  final data = Advancemodel([], [], [], [], [], b, value.id, value.image,
      value.description, value.workoutname, value.reps);
  wing.add(data);
  // shold.put(value.id, data);

  print(wing.values);
  getAdvanceworkout();
}
