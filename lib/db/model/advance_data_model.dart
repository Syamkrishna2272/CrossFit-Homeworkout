import 'package:hive/hive.dart';
part 'advance_data_model.g.dart';

@HiveType(typeId: 4)
class Advancemodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  List? Chest;

  @HiveField(2)
  List? Shoulder;

  @HiveField(3)
  List? Biceps;

  @HiveField(4)
  List? Triceps;

  @HiveField(5)
  List? Leg;

  @HiveField(6)
  List? Wings;

  @HiveField(7)
  String? image;

  @HiveField(8)
  String? description;

  @HiveField(9)
  String? reps;

  @HiveField(10)
  String? workoutname;

  Advancemodel(this.Chest, this.Shoulder, this.Biceps, this.Triceps, this.Leg,
      this.Wings, this.id, this.image,this.reps, this.description, this.workoutname);
}
