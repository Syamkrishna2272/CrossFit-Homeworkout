import 'package:hive/hive.dart';
part 'beginner_data_model.g.dart';

@HiveType(typeId: 3)
class Beginnermodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
   List? Chestbeginner;

  @HiveField(2)
   List? Shoulderbeginner;

  @HiveField(3)
   List? Legbeginenr;

  @HiveField(4)
   List? Absbeginner;
 

  @HiveField(5)
   String? image;

  @HiveField(6)
   String? description;

  Beginnermodel(this.Chestbeginner, this.Shoulderbeginner, this.Legbeginenr,
      this.Absbeginner, this.id, this.image, this.description);
}
