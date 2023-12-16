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
  chest.add(value);
  Getallchest();
}

Shoulderadding(Advancemodel value) async {
  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  shoulder.add(value);
  Getallshoulder();
}

Bicepsadding(Advancemodel value) async {
  final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
  Biceps.add(value);
  Getallbiceps();
}

Tricepsadding(Advancemodel value) async {
  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  Triceps.add(value);
  Getalltriceps();
}

Legadding(Advancemodel value) async {
  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  Leg.add(value);
  Getallleg();
}

Wingsadding(Advancemodel value) async {
  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  Wings.add(value);
  Getallwings();
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Getallchest() async {
  final chest = await Hive.openBox<Advancemodel>('chests_db');
  Chestadvance.value.clear();
  Chestadvance.value.addAll(chest.values);
}

Getallshoulder() async {
  final shoulder = await Hive.openBox<Advancemodel>('shoulders_db');
  Shoulderadvance.value.clear();
  Shoulderadvance.value.addAll(shoulder.values);
}

Getallbiceps() async {
  final Biceps = await Hive.openBox<Advancemodel>('biceps_db');
  Bicepsadvance.value.clear();
  Bicepsadvance.value.addAll(Biceps.values);
}

Getalltriceps() async {
  final Triceps = await Hive.openBox<Advancemodel>('triceps_db');
  Tricepsadvance.value.clear();
  Tricepsadvance.value.addAll(Triceps.values);
}

Getallleg() async {
  final Leg = await Hive.openBox<Advancemodel>('legs_db');
  Legadvance.value.clear();
  Legadvance.value.addAll(Leg.values);
}

Getallwings() async {
  final Wings = await Hive.openBox<Advancemodel>('wings_db');
  Wingsadvance.value.clear();
  Wingsadvance.value.addAll(Wings.values);
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

Advanceworkoutchecking(Workoutmodel value, Advancemodel data) async {
  
  if (value.category == 'ADVANCED' && value.bodypart == 'Chest') {
    print("haaaai");
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


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




// Addadvanceworkout(Advancemodel value) async {
//   List b = [];

//   b.clear();

//   print(b);
//   b.add(value);

//   chest.add(data);
//   print(chest.values);
//   getAdvanceworkout();
// }
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//

// deleteadvance(int id, Workoutmodel value) async {
//   if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Chest' &&
//       value.id == id) {
//     final chest = await Hive.openBox<Advancemodel>('chests_db');
//     chest.delete(id);
//     getAdvanceworkout();
//   } else if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Shoulder' &&
//       value.id == id) {
//     final shold = await Hive.openBox<Advancemodel>('shoulders_db');
//     shold.delete(id);
//     getAdvanceworkout();
//   } else if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Biceps' &&
//       value.id == id) {
//     final bicep = await Hive.openBox<Advancemodel>('biceps_db');
//     bicep.delete(id);
//     getAdvanceworkout();
//   } else if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Triceps' &&
//       value.id == id) {
//     final tricep = await Hive.openBox<Advancemodel>('triceps_db');
//     tricep.delete(id);
//     getAdvanceworkout();
//   } else if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Shoulder' &&
//       value.id == id) {
//     final leg = await Hive.openBox<Advancemodel>('legs_db');
//     leg.delete(id);
//     getAdvanceworkout();
//   } else if (value.category == 'ADVANCED' &&
//       value.bodypart == 'Shoulder' &&
//       value.id == id) {
//     final wing = await Hive.openBox<Advancemodel>('wings_db');
//     wing.delete(id);
//     getAdvanceworkout();
//   }
// }

// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// shoulder(Advancemodel value) async {
//   List b = [];
//   final shold = await Hive.openBox<Advancemodel>('shoulders_db');
//   b.clear();
//   for (var i in shold.values) {
//     b.add(i.Shoulder);
//   }

//   b.add(value);
//   final data = Advancemodel([], b, [], [], [], [], value.id, value.image,
//       value.reps, value.description, value.workoutname);
//   // final data1=Advancemodel(Chest, Shoulder, Biceps, Triceps, Leg, Wings, id, image, reps, description, workoutname)
//   shold.add(data);
//   // shold.put(value.id, data);

//   print(shold.values);
//   getAdvanceworkout();
// }

// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// biceps(Advancemodel value) async {
//   List b = [];
//   final bicep = await Hive.openBox<Advancemodel>('biceps_db');
//   b.clear();
//   for (var i in bicep.values) {
//     b.add(i.Biceps);
//   }

//   b.add(value);
//   final data = Advancemodel([], [], b, [], [], [], value.id, value.image,
//       value.reps, value.description, value.workoutname);
//   // final da=Advancemodel(Chest, Shoulder, Biceps, Triceps, Leg, Wings, id, image, reps, description, workoutname)
//   bicep.add(data);

//   print(bicep.values);
//   getAdvanceworkout();
// }

// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// triceps(Advancemodel value) async {
//   List b = [];
//   final tricep = await Hive.openBox<Advancemodel>('triceps_db');
//   b.clear();
//   for (var i in tricep.values) {
//     b.add(i.Triceps);
//   }

//   b.add(value);
//   final data = Advancemodel([], [], [], b, [], [], value.id, value.image,
//       value.reps, value.description, value.workoutname);
//       // final ss=Advancemodel(Chest, Shoulder, Biceps, Triceps, Leg, Wings, id, image, reps, description, workoutname)
//   tricep.add(data);
//   // shold.put(value.id, data);

//   print(tricep.values);
//   getAdvanceworkout();
// }

// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// legs(Advancemodel value) async {
//   List b = [];
//   final leg = await Hive.openBox<Advancemodel>('legs_db');
//   b.clear();
//   for (var i in leg.values) {
//     b.add(i.Leg);
//   }

//   b.add(value);
//   final data = Advancemodel([], [], [], [], b, [], value.id, value.image,
//       value.reps, value.description, value.workoutname);
//   leg.add(data);
//   // shold.put(value.id, data);

//   print(leg.values);
//   getAdvanceworkout();
// }

// // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// wings(Advancemodel value) async {
//   List b = [];
//   final wing = await Hive.openBox<Advancemodel>('wings_db');
//   b.clear();
//   for (var i in wing.values) {
//     b.add(i.Wings);
//   }

//   b.add(value);
//   final data = Advancemodel([], [], [], [], [], b, value.id, value.image,
//       value.reps, value.description, value.workoutname);
//   wing.add(data);
//   // shold.put(value.id, data);

//   print(wing.values);
//   getAdvanceworkout();
// }
