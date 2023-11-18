import 'package:cross_fit/screens/warm_up_page.dart';
import 'package:flutter/material.dart';

class beginner extends StatelessWidget {
  const beginner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("Beginner"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const warmUp();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/warm-up-exercises.jpg'),
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
                              "Warm-Up", 
                              style: TextStyle(
                                fontFamily: 'custom',
                                  fontSize: 20 ,
                                  color: Colors.white, 
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/chest workout.webp'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 160,
                width: double.infinity,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.black38,
                        child: const Text(
                          "CHEST BEGINNER",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'custom',
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
                        image: AssetImage('assets/images/Shoulder.jpg'),
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
                          "SHOULDER BEGINNER", 
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'custom',
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
                        image: AssetImage('assets/images/Leg.jpg'),
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
                          "LEG BEGINNER",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'custom',
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
                        image: AssetImage('assets/images/abs2.jpg'),
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
                          "ABS BEGINNER",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'custom',
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
