import 'package:hive/hive.dart';
part 'challenge_data_model.g.dart';

@HiveType(typeId: 5)
class FullChallenge {
  @HiveField(0)
  List count;

  FullChallenge({required this.count});
}
