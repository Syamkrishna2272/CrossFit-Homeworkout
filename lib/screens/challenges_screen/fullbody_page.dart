import 'package:cross_fit/screens/challenges_screen/week_challenges/week_2.dart';
import 'package:cross_fit/screens/challenges_screen/week_challenges/week_3.dart';
import 'package:cross_fit/screens/challenges_screen/week_challenges/week_4.dart';
import 'package:flutter/material.dart';
import 'week_challenges/week_1.dart';

class Fullbody extends StatefulWidget {
  const Fullbody({super.key});

  @override
  State<Fullbody> createState() => _FullbodyState();
}

int completedWorkout = 0;
int lottiecomplete = 0;
int taskcomplete = 0;
int unlock=0;

class _FullbodyState extends State<Fullbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "7x4 CHALLENGE",
          style: TextStyle(fontFamily: 'custom', fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/beginner.jpg'),
                      fit: BoxFit.cover)
                      ),
            ),
            const weekOne(),
            const weekTwo(),
            const weekThree(),
            const weekFour()
          ],
        ),
      )),
    );
  }
}
