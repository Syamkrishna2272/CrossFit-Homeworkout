import 'package:cross_fit/screens/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    const Text(
                      "CROSS FIT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'custom'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      labelText: "Name:",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'SYAM',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      labelText: "Name:",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'SYAM',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      labelText: "Name:",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'SYAM',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      labelText: "Name:",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'SYAM',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                    ),
                    const SizedBox(
                      height: 180,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return Homeworkout();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.red),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: const Text(
                        "SUBMIT ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
