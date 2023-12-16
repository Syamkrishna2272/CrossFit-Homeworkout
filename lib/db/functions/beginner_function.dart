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
  chest.add(value);
  getallchest();
}

AddshoulderWorkout(Beginnermodel value) async {
  final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
  shold.add(value);
  getallshoulder();
}

AddlegWorkout(Beginnermodel value) async {
  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  leg.add(value);
  getallleg();
}

AddabsWorkout(Beginnermodel value) async {
  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  abs.add(value);
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
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallleg() async {
  final leg = await Hive.openBox<Beginnermodel>('leg_db');
  legnotifier.value.clear();
  legnotifier.value.addAll(leg.values);
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

getallabs() async {
  final abs = await Hive.openBox<Beginnermodel>('abs_db');
  absnotifier.value.clear();
  absnotifier.value.addAll(abs.values);
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
  print('id==${value.id}');

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
    print("haaaai");
    AddchestrWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Shoulder') {
    AddshoulderWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
    AddlegWorkout(data);
  } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
    AddabsWorkout(data);
  }
}


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



//  else if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
//   leg(data);
// } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
//   abs(data);
// }

// if (value.category == 'BEGINNER' && value.bodypart == 'Chest') {
//   final chest = await Hive.openBox<Beginnermodel>('chest_db');
//   chest.delete(id);
//   getallchest();
// }
//  if (value.category == 'BEGINNER' && value.bodypart == 'Shoulder') {
//   final shoulder = await Hive.openBox<Beginnermodel>('shoulder_db');
//   shoulder.delete(id);
//   getallshoulder();
// }
// if (value.category == 'BEGINNER' && value.bodypart == 'Leg') {
//   final legg = await Hive.openBox<Beginnermodel>('leg_db');
//   legg.delete(id);
//   getbeginnerWorkout();
// } else if (value.category == 'BEGINNER' && value.bodypart == 'Abs') {
//   final Abs = await Hive.openBox<Beginnermodel>('abs_db');
//   Abs.delete(id);
//   getbeginnerWorkout();
// }

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// shoulder(Beginnermodel value) async {
//   List a = [];
//   final shold = await Hive.openBox<Beginnermodel>('shoulder_db');
//   a.clear();
//   for (var i in shold.values) {
//     a.add(i.Shoulderbeginner);
//   }

//   a.add(value);
//   final data = Beginnermodel([], a, [], [], value.id, value.image,
//       value.description, value.reps, value.workoutname);
//   shold.add(data);
//   // shold.put(value.id, data);

//   print(shold.values);
//   getbeginnerWorkout();
// }

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// leg(Beginnermodel value) async {
//   final leg = await Hive.openBox<Beginnermodel>('leg_db');

//   leg.add(value);

//   getbeginnerWorkout();
// }

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// abs(Beginnermodel value) async {
//   final abs = await Hive.openBox<Beginnermodel>('abs_db');

//   abs.add(value);

//   getbeginnerWorkout();
// }
