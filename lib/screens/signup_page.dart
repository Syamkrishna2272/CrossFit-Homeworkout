import 'package:cross_fit/screens/admin_login.dart';
import 'package:cross_fit/screens/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/signup.jpg'),
              fit: BoxFit.cover)
              ),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent, 
            automaticallyImplyLeading: false,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Create a Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'SYAM',
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 70,
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
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        labelText: "Email:",
                        filled: true,
                        fillColor: Colors.black54,
                        labelStyle: TextStyle(
                            fontFamily: 'SYAM',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: "Phone:",
                        filled: true,
                        fillColor: Colors.black54,
                        labelStyle: TextStyle(
                            fontFamily: 'SYAM',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    inputFormatters: [LengthLimitingTextInputFormatter(4)],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: "Password:",
                        filled: true,
                        fillColor: Colors.black54,
                        labelStyle: TextStyle(
                            fontFamily: 'SYAM',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const Homeworkout();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.red),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontFamily: 'SYAM',
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return Adminloginpage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.red),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text(
                    "Admin Login ",
                    style: TextStyle(
                        fontFamily: 'SYAM',
                        color: Colors.white,
                        
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account? ",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SYAM',
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white
                                    // TextStyle(
                                    //     fontFamily: 'SYAM',
                                    //     color: Colors.amber,
                                    //     fontSize: 20)
                                    )),
                        onPressed: () {},
                        child: Text("Login"))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
