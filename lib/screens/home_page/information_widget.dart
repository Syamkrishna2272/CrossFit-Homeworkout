import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/screens/home_page/information_edit.dart';
import 'package:flutter/material.dart';
import '../../db/model/signup_data_model.dart';
import '../login&signup/login_page.dart';

// ignore: must_be_immutable, camel_case_types
class personalContainer extends StatefulWidget {
  personalContainer({
    required this.data,
    super.key,
  });
  signupmodel data;

  @override
  State<personalContainer> createState() => _personalContainerState();
}
class _personalContainerState extends State<personalContainer> {
  late signupmodel userdata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userdata = widget.data;
  }

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
                'Name : ${logCheck[x].name}',
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
                'Email : ${logCheck[x].email}',
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
                'Phone : ${logCheck[x].phone}',
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
                  'Height : ${logCheck[x].height}',
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
                  'Weight : ${logCheck[x].weight}',
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
                'BMI : ${calculateBMI(logCheck[x].height, logCheck[x].weight)}',
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
          padding: const EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return PersonalinfoEdit(
                    data: userdata,
                    onUpdate: (newdata) {
                      setState(() {
                        // updateallText(newdata);
                      });
                    }
                    );
              }));
            },
            child: Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              child: const Center(
                  child: Text(
                "Edit your Profile",
                style: TextStyle(
                    fontFamily: 'custom', color: Colors.white, fontSize: 12),
              )),
            ),
          ),
        ),
      ],
    );
  }

  calculateBMI(String he, String we) {
    double height = double.parse(he) / 100;
    double weight = double.parse(we);
    double heightInMeters = weight / (height * height);
    return heightInMeters.floor();
  }

  void updateUserdata(signupmodel newdata) {
    setState(() {
      userdata = newdata;
    });
  }
}
