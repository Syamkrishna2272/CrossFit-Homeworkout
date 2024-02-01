import 'package:cross_fit/screens/login&signup/signup_page.dart';
import 'package:hive/hive.dart';
import '../model/signup_data_model.dart';

Future<void> addSignup(signupmodel value) async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  final id1 = await signupDB.add(value);
  value.id = id1;
  signupDB.put(id1, value);
  getsignup();
}

List<signupmodel> logCheck = [];

Future<void> getsignup() async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  logCheck.clear();
  logCheck.addAll(signupDB.values);

  for (var i in signupDB.values) {
    pername = i.name;
    peremail = i.email;
    perphone = i.phone;
    perheight = i.height;
    perweight = i.weight;
    perid=i.id;
    print('id==${i.id}');
  }
}

Future<void> editallprofile(int id, signupmodel value) async {
  final signupDB = await Hive.openBox<signupmodel>('signup_db');
  await signupDB.put(id, value);
  getsignup();
}
