import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
        title: const Text(
          "About ",
          style: TextStyle(fontFamily: 'custom', fontSize: 18),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 4, right: 1),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Text("""
                 
CROSS FIT provides daily workout routines for all your main muscle groups. In just a few minutes a day, you can build muscles and keep fitness at home without having to go to the gym. No equipment or coach needed, all exercises can be performed with just your body weight.

Founded in 2023 by Syamkrishna .CROSS FIT app is our first major project with a basic performance of workout and creates a better versions in future.CROSS FIT gives you the best home workouts experience that you never had. it includes attractivemode of UI's and good practices.

We hope you work hard and build your muscles If you have any questions or comments, please don\'t hesitate to contact us.

Sincerely,

Syamkrishna

      
              """),
          ),
        ),
      ),
    );
  }
}
