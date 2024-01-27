import 'dart:async';
import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/screens/intro_page.dart';
import 'package:cross_fit/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page/workout_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    gotonext();
    getsignup();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/splash.jpg'),
        ),
      ),
    );
  }

  Future<void> gotonext() async {
    final sharedpref = await SharedPreferences.getInstance();
    final istrue = sharedpref.getBool(Keys);

    if (istrue == null || istrue == false) {
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return loginPage();
      }));
    } else {
      await Future.delayed(Duration(seconds: 1));

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) {
        return Homeworkout();
      }), (route) => false);
    }
  }
}
