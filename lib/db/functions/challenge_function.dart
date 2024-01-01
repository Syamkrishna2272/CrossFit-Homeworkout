import 'package:cross_fit/db/model/challenge_data_model.dart';
import 'package:cross_fit/screens/challenges_screen/warm_up_page.dart';
import 'package:hive/hive.dart';

Challengeadd(int value) async {
  List a = [];
  final counts = await Hive.openBox<FullChallenge>('count');
  for (var i in counts.values) {
    a.addAll(i.count);
  }
  a.add(value);
  final val = FullChallenge(count: a);
  counts.add(val);
  Challengegetting();
}

Challengegetting() async {
  final counts = await Hive.openBox<FullChallenge>('count');
  W1.clear();
  for (var i in counts.values) {
    W1.addAll(i.count);
  }
}
