import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'fullbody_page.dart';
import 'fullbody_workout_page.dart';

// ignore: camel_case_types
class warmUp extends StatefulWidget {
  const warmUp({super.key});

  @override
  State<warmUp> createState() => _warmUpState();
}

List W1 = [];

// ignore: camel_case_types
class _warmUpState extends State<warmUp> {
  late List<bool> isPlayingList;
  late Map<int, Timer> timers;
  late Map<int, int> remainingTimes;
  late Map<int, int> initialDuration;
  late Map<int, bool> completionState;
  late int currentplayingindex;

  @override
  void initState() {
    super.initState();
    isPlayingList = List.generate(exercisedata.length, (index) => false);
    timers = {};
    initialDuration = {};
    remainingTimes = {};
    completionState = {};
    currentplayingindex = -1;

    for (int i = 0; i < exercisedata.length; i++) {
      initialDuration[i] = 20;
    }
  }

  @override
  void dispose() {
    for (var timer in timers.values) {
      timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) {
                return const Fullbody();
              }));
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "Warm-Up",
          style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'custom'),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      startTimer(index);
                    },
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
                                    setState(() {
                                      if (isPlayingList[index]) {
                                        isPlayingList[index] = false;
                                        timers[index]!.cancel();
                                      } else {
                                        isPlayingList[index] = true;
                                        startTimer(index);
                                      }
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
                                isPlayingList[index] == false
                                    ? completionState[index] != true
                                        ? const Text(
                                            "0s",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          )
                                        : const Icon(
                                            Icons.check,
                                            color: Colors.green,
                                            size: 25,
                                          )
                                    : Text(
                                        '${remainingTimes[index] ?? 0}s',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                const SizedBox(
                                  width: 35,
                                )
                              ],
                            ),
                          ),
                        ],
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
            TextButton(
                onPressed: () {
                  check();
                },
                child: const Text(
                  "Complete",
                  style: TextStyle(
                      fontFamily: 'custom', fontSize: 13, color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }

  void startTimer(int index) {
    setState(() {
      if (currentplayingindex != -1 && currentplayingindex != index) {
        // Stop the previously playing animation
        isPlayingList[currentplayingindex] = false;
        timers[currentplayingindex]!.cancel();
      }
      currentplayingindex = index;
      isPlayingList[index] = true;
      remainingTimes[index] ??= initialDuration[index]!;
      timers[index] = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (mounted && isPlayingList[index]) {
          setState(() {
            if (remainingTimes[index]! > 0) {
              // If the animation is playing, decrement the remaining time
              remainingTimes[index] = remainingTimes[index]! - 1;
            } else {
              // If the remaining time is 0, stop the animation
              isPlayingList[index] = false;
              timer.cancel();
              completionState[index] = true;
              W1.add(1);
            }
          });
        }
      });
    });
  }

  void pauseTime(int index) {
    setState(() {
      if (timers.containsKey(index)) {
        timers[index]!.cancel();
        timers.remove(index);
        remainingTimes[index] = remainingTimes[index]!;
      }
      isPlayingList[index] = false;
    });
  }

  void resumeTime(int index) {
    setState(() {
      if (remainingTimes.containsKey(index)) {
        startTimer(index);
      }
    });
  }

  check() {
    print('length is==${W1.length}');
    if (W1.length == 10||W1.length>10) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return const Fullbody();
      }));
      completedWorkout = completedWorkout + 1;
      lottiecomplete = lottiecomplete + 10;
      W1.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 1),
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.red,
          content: Text("Complete all workouts ")));
    }
  } 
}
 