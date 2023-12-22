import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'package:cross_fit/screens/fullbody_workout_page.dart';

class warmUp extends StatefulWidget {
  const warmUp({super.key});

  @override
  State<warmUp> createState() => _warmUpState();
}

class _warmUpState extends State<warmUp> {
  late List<bool> isPlayingList;
  late Map<int, Timer> timers;
  late Map<int, int> remainingTimes;

  @override
  void initState() {
    super.initState();
    isPlayingList = List.generate(exercisedata.length, (index) => false);
    timers = {};
    remainingTimes = {};
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timers.values.forEach((timer) {
      timer.cancel();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "Warm-Up",
          style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'custom'),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                startTimer(index);
                setState(() {
                  isPlayingList[index] = true;
                });
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${exercisedata[index].title}",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'custom'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Lottie.asset(
                              exercisedata[index].animationpath,
                              animate: isPlayingList[index],
                            ),
                            IconButton(
                              onPressed: () {
                                startTimer(index);
                                setState(() {
                                  isPlayingList[index] = true;
                                });
                              },
                              icon: Icon(
                                isPlayingList[index]
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Text(
                              '${remainingTimes[index] ?? 0}s',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 35,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 5,
            );
          },
          itemCount: exercisedata.length,
        ),
      ),
    );
  }

  void startTimer(int index) {
    timers[index]?.cancel();
    remainingTimes[index] = 20;
    timers[index] = Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (remainingTimes[index]! > 0) {
            remainingTimes[index] = remainingTimes[index]! - 1;
          } else {
            isPlayingList[index] = false;
            timer.cancel();
          }
        });
      }
    });
    // timer = Timer.(Duration(seconds: 20), () {
    //   if (mounted) {
    //     setState(() {
    //       isPlayingList[index] = false;
    //     });
    //   }
    // });
  }
}
