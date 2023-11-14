import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class warmUp extends StatelessWidget {
  const warmUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text("Warm-Up"),
      ),
      body: SafeArea(
          child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Lottie.asset(
                'assets/animation/Animation - 1698121902339.json',
                width: 150,
                height: 50,
                fit: BoxFit.cover),
          ),
          Text(
            "Jumping Jacks",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          )
          // Lottie.asset('assets/animation/Animation - 1698121902339.json',
          //     width: 150, height: 50, fit: BoxFit.cover)
        ],
      )),
    );
  }
}
