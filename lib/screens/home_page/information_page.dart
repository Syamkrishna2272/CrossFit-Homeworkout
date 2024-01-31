import 'package:cross_fit/screens/home_page/workout_page.dart';
import 'package:flutter/material.dart';
import 'information_widget.dart';

// ignore: must_be_immutable
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 2.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.red[700], 
            centerTitle: true,
            title: const Text(
              "Personal Information",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'custom'),
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "CROSS FIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'custom'),
                      ),
                    ),
                    personalContainer(data: datas),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
