import 'package:hive/hive.dart';
import '../model/signup_data_model.dart';



Future<void> addSignup(signupmodel value) async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  final id1 = await signupDB.add(value);
  var a=signupDB.name;
  print(a);

} 
