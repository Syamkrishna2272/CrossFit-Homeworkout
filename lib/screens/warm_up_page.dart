import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cross_fit/screens/fullbody_workout_page.dart';

class warmUp extends StatefulWidget {
  const warmUp({super.key});

  @override
  State<warmUp> createState() => _warmUpState();
}

class _warmUpState extends State<warmUp> with TickerProviderStateMixin {
  late List<AnimationController> _controller;
  late List<Duration> _animationduration;
  late Timer _animationTimer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = List.generate(
        exercisedata.length, (index) => AnimationController(vsync: this));
    _animationduration =
        List.generate(exercisedata.length, (index) => Duration.zero);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    for (var controller in _controller) {
      controller.dispose();
    }
    if(_animationTimer!=null&&_animationTimer.isActive){
      _animationTimer.cancel(); 
    }

 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "Warm-Up",
          style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'custom'),
        ),
        centerTitle: true,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${exercisedata[index].title}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset(
                            exercisedata[index].animationpath,
                            controller: _controller[index],
                            onLoaded: (composition) {
                              _animationduration[index] = composition.duration;
                              _controller[index].duration =
                                  composition.duration;
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0), 
                      child: Text(
                        formatDuration(_animationduration[index]),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          if (_controller[index].isAnimating) {
                            _controller[index].stop();
                          } else {
                            _controller[index].forward();
                            _animationTimer = Timer(Duration(seconds: 20), () {
                              _controller[index].stop();
                            });
                          }
                        },
                        icon: Icon(_controller[index].isAnimating
                            ? Icons.pause
                            : Icons.play_arrow))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  String formatDuration(Duration duration) {
    return '${duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60)).toString().padLeft(2, '0')}';
  }
}
