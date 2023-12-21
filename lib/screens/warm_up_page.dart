import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cross_fit/screens/fullbody_workout_page.dart';

class warmUp extends StatefulWidget {
  const warmUp({super.key});

  @override
  State<warmUp> createState() => _warmUpState();
}

class _warmUpState extends State<warmUp> {
  // bool isPlaying = false;
  late List<bool> isPlayingList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPlayingList = List.generate(exercisedata.length, (index) => false);
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
                    setState(() {
                      isPlayingList[index] = !isPlayingList[index];
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Lottie.asset(
                                        exercisedata[index].animationpath,
                                        animate: isPlayingList[index]),
                                  ),
                                  // if (!isPlayingList[index])
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isPlayingList[index] =
                                              !isPlayingList[index];
                                        });
                                      },
                                      icon: Icon(isPlayingList[index]
                                          ? Icons.pause
                                          : Icons.play_arrow)),
                                  const SizedBox(
                                    width: 50,
                                  )
                                ],
                              )),
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
              itemCount: exercisedata.length)),
    );
  }
}
