import 'package:cross_fit/screens/login&signup/signup_widget.dart';
import 'package:flutter/material.dart';

const key1 = "success";
dynamic perid;
dynamic pername;
dynamic peremail;
dynamic perpassword;
dynamic perphone;
dynamic perheight;
dynamic perweight;

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
          backgroundColor: Colors.transparent,
          body:
              SingleChildScrollView(child: Form(child: Signup_page_widget()))),
    );
  }
}
