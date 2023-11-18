import 'dart:ui';

import 'package:flutter/material.dart';

class advance extends StatelessWidget {
  const advance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Advance"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance chest.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "CHEST",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance shoulder.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "SHOULDER",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance biceps.webp'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "BICEPS",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance triceps.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "TRICEPS ",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance leg.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "LEG",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/advance wings.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "WINGS",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
