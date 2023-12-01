import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cross_fit/screens/fullbody_workout_page.dart';

class warmUp extends StatelessWidget {
  const warmUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Warm-Up"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: exercisedata.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "${exercisedata[index].title}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                // Divider(
                //   thickness: 1,
                // ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Lottie.asset(exercisedata[index].animationpath),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "00:20",
                            style: TextStyle(fontSize: 15),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
