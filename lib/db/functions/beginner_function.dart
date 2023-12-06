import 'package:cross_fit/db/model/beginner_data_model.dart';
import 'package:cross_fit/screens/beginner_page.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../../screens/beginner_body_screen.dart';

ValueNotifier<List<Beginnermodel>> beginnerListnotifier = ValueNotifier([]);

// ignore: non_constant_identifier_names
AddbeginnerWorkout(Beginnermodel value) async {
  List a=[];
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  a.clear();
  for(var i in chest.values){
    a.add(i.Chestbeginner);
  }

  a.add(value);
      final data=Beginnermodel(a, [], [],[], value.id, value.image,value.description);
      chest.add(data);
      chest.put(value.id,data);

   print(chest.values);
  getbeginnerWorkout();
}

getbeginnerWorkout() async {
  final chest = await Hive.openBox<Beginnermodel>('chest_db');
  chestlist.clear();
  chestlist.addAll(chest.values);

}
deletebeginner(int id)async{
   final chest = await Hive.openBox<Beginnermodel>('chest_db');
   chest.delete(id);
   getbeginnerWorkout();
} 