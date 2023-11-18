import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class warmUp extends StatefulWidget {
  const warmUp({super.key});

  @override
  State<warmUp> createState() => _warmUpState();
}

class _warmUpState extends State<warmUp> {
  int _seconds = 20;
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    // Create a timer that increments the seconds every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Warm-Up"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10 Workouts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "1/10",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1698121902339.json',
                    
                    // repeat: false
                   ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Jumping Jacks",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white ,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700231163262.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround ,
                    children: [ 
                      const Text(
                        "Split Jump",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700231657737.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Single leg hip rotation",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700231795833.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Squat kicks",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700231997438.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Push Ups",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700232157844.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Shoulder Stretch",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700232285169.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Jumping_squats",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700232403774.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Reverse Crunches",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700232503062.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Inchworm",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation - 1700232636962.json',
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Seated abs circles",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "00:20", // Display the timer value
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
