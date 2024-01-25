import 'package:cross_fit/screens/home_page/workout_page.dart';
import 'package:flutter/material.dart';
import '../../db/model/signup_data_model.dart';

// ignore: must_be_immutable, camel_case_types
class personalContainer extends StatelessWidget {
  personalContainer({
    required this.data,
    super.key,
  });
  signupmodel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Center(
              child: Text(
                'Name : ${data.name}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Center(
              child: Text(
                'Email : ${data.email}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Center(
              child: Text(
                'Phone : ${data.phone}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 40,
          children: [
            Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              child: Center(
                child: Text(
                  'Height : ${datas.height}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'custom'),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              child: Center(
                child: Text(
                  'Weight : ${datas.weight}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'custom'),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Center(
              child: Text(
                'BMI : ${calculateBMI(data.height, data.weight)}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
        )
      ],
    );
  }

  calculateBMI(String he, String we) {
    double height = double.parse(he) / 100;
    double weight = double.parse(we);
    double heightInMeters = weight / (height * height);
    return heightInMeters.floor();
  }
}
