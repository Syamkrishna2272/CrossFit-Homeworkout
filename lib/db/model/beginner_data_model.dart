import 'package:hive/hive.dart';
part 'beginner_data_model.g.dart';

@HiveType(typeId: 3)
class Beginnermodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? image;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? reps;

  @HiveField(4)
  String? workoutname;

  Beginnermodel(
     
      this.id,
      this.image,
      this.description,
      this.reps,
      this.workoutname);
}
