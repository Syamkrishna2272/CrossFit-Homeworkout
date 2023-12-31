import 'package:hive/hive.dart';
part 'signup_data_model.g.dart';

@HiveType(typeId: 2)
class signupmodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String phone;

  @HiveField(4)
  final String password;

  @HiveField(5)
  final String height;

  @HiveField(6)
  final String weight;

  signupmodel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.height,
      required this.weight,
      this.id});
}
