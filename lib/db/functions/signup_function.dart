import 'package:cross_fit/screens/signup_page.dart';
import 'package:hive/hive.dart';
import '../model/signup_data_model.dart';

Future<void> addSignup(signupmodel value) async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  final id1 = await signupDB.add(value);
  value.id = id1;
  signupDB.put(id1, value);
  getsignup();
}

Future<void> getsignup() async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  for (var i in signupDB.values) {
    pername = i.name;
    peremail = i.email;
    perphone = i.phone;
    perheight=i.height;
    perweight=i.weight;
  }
}
