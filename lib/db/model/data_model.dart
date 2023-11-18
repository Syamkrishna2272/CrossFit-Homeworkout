import 'package:hive_flutter/hive_flutter.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class Workoutmodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late final String catagory;

  @HiveField(2)
  late final String workoutname;

  @HiveField(3)
  late final String bodypart;

  @HiveField(4)
  late final String reps;

  @HiveField(5)
  final String image;

  Workoutmodel(
      {required this.catagory,
      required this.workoutname,
      required this.bodypart,
      required this.reps,
      required this.image,
      this.id});
}
