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
                      fit: BoxFit.cover)),
            ),
            weekOne(),
            weekTwo(),
            weekThree(),
            weekFour()
          ],
        ),
      )),
    );
  }

  // buildWeekContainer(BuildContext context, int weekNumber) {
  //   return Card(
  //     elevation: 8,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //     child: Container(
  //       width: double.infinity,
  //       height: 150,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Wrap(
  //           spacing: 45,
  //           runSpacing: 30,
  //           children: List.generate(
  //             7,
  //             (index) => GestureDetector(
  //               onTap: () {
  //                 if (completedWorkout == index) {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(builder: (ctx) {
  //                       return warmUp();
  //                     }),
  //                   );
  //                 }

  //                 // if (completedWorkout >= (weekNumber - 1) * 7 + index) {

  //                 //   Navigator.push(
  //                 //     context,
  //                 //     MaterialPageRoute(builder: (ctx) {
  //                 //       return warmUp();
  //                 //     }),
  //                 //   );
  //                 // } else {
  //                 //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //                 //     content: Text(
  //                 //         'Complete previous workouts to unlock this day!'),
  //                 //     behavior: SnackBarBehavior.floating,
  //                 //     margin: EdgeInsets.all(10),
  //                 //     backgroundColor: Colors.red,
  //                 //     duration: Duration(seconds: 1),
  //                 //   ));
  //                 // }
  //               },
  //               child: CircleAvatar(
  //                 backgroundColor: Colors.black54,
  //                 child: Text(
  //                   (index + 1).toString(),
  //                   style: const TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 16,
  //                       fontFamily: 'custom'),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
