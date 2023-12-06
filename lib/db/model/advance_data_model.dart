import 'package:hive/hive.dart';
part 'advance_data_model.g.dart';

@HiveType(typeId: 4)
class Advancemodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String Chest;

  @HiveField(2)
  final String Shoulder;

  @HiveField(3)
  final String Biceps;

  @HiveField(4)
  final String Triceps;

  @HiveField(5)
  final String Leg;

  @HiveField(6)
  final String Wings;

  Advancemodel(this.Chest, this.Shoulder, this.Biceps, this.Triceps, this.Leg,
      this.Wings);
}
