
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/db/model/signup_data_model.dart';
import 'package:cross_fit/screens/spalsh_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'db/model/beginner_data_model.dart';

Future<void> main()async{
   WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
   Hive.registerAdapter(WorkoutmodelAdapter()); 
   Hive.registerAdapter(signupmodelAdapter()); 
     Hive.registerAdapter(BeginnermodelAdapter()); 
  await Hive.openBox<Beginnermodel>('chest_db');
   await Hive.openBox<Workoutmodel>('workout_db');
   await Hive.openBox<signupmodel>('signup_db'); 
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen()
    );
  }
}