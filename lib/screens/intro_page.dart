import 'package:cross_fit/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const Keys = "success";

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/intro.jpg'),
                        fit: BoxFit.contain)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      "IT'S TIME ",
                      style: TextStyle(
                          fontFamily: 'custom',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "TO GET",
                      style: TextStyle(
                          fontFamily: 'custom',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "STRONGER",
                      style: TextStyle(
                          fontFamily: 'custom',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          checknext();
                        },
                        child: const Text(
                          "NEXT ",
                          style: TextStyle(
                              fontFamily: 'custom',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(18))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }

  checknext() async {
    final sharedpref = await SharedPreferences.getInstance();
    await sharedpref.setBool(Keys, true);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return SignupScreen();
    }));
  }
}
