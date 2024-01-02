import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

import '../db/model/signup_data_model.dart';
final syam = Hive.openBox<signupmodel>('signup_db');

class PersonalInfo extends StatefulWidget {
   PersonalInfo({super.key});

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
          image: DecorationImage(
              image: AssetImage('assets/images/signup.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.redAccent[700],
            centerTitle: true,
            title: const Text(
              "Personal Information",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'custom'),
            ),
          ),
          body:  SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        "CROSS FIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'custom'),
                      ),
                    ),
                    // personalContainer(data: syam.name), 
                    // personalContainer(data: syam.email),
                    // personalContainer(data: syam,),
                    // personalContainer(data: syam),
                  ],
                  
                ),
              ],
            ),
          )),
    );
  }
}

class personalContainer extends StatelessWidget {
  personalContainer({
    required this.data,
    super.key,
  });
  var data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        // child: Center(child: Text(),),
      ),
    );
  }
}
