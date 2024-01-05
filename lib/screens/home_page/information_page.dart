import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class PersonalInfo extends StatefulWidget {
  PersonalInfo(
      {super.key,
      required this.name,
      required this.email,
      required this.pass,
      required this.phn,
      required this.hei,
      required this.wei});

  var name;
  var email;
  var pass;
  var phn;
  var hei;
  var wei;

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
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    const Center(
                      child: Text(
                        "CROSS FIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'custom'),
                      ),
                    ),
                    personalContainer(data: widget.name),
                    personalContainer(data: widget.email),
                    personalContainer(data: widget.phn),
                    height_weight_container(
                        heigthinfo: widget.hei, weightinfo: widget.wei)
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class height_weight_container extends StatelessWidget {
  height_weight_container({
    required this.heigthinfo,
    required this.weightinfo,
    super.key,
  });
  var heigthinfo;
  var weightinfo;

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
              heigthinfo,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
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
              weightinfo,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'custom'),
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class personalContainer extends StatelessWidget {
  personalContainer({
    required this.data,
    super.key,
  });
  var data;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            data,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'custom'),
          ),
        ),
      ),
    );
  }
}
