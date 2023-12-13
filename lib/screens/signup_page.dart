import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/db/model/signup_data_model.dart';
import 'package:cross_fit/screens/admin_login.dart';
import 'package:cross_fit/screens/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

const key1 = "success";

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = TextEditingController();

  final _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          body: SingleChildScrollView(
              child: Form(
            key: _formKey,
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
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: _nameController,
                    style: const TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.words,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter name";
                      }
                      return null;
                    },
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
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
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
                    controller: _phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter phone number";
                      }
                      return null;
                    },
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
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
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
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                  onPressed: () {
                    onsignupclicked(context);
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
                    Container(
                      color: Colors.black45,
                      child: const Text(
                        "already have an account? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SYAM',
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white    
                                    )),
                        onPressed: () {},
                        child: Text("Login"))
                  ],
                ),
              ],
            ),
          ))),
    );
  }

  Future<void> onsignupclicked(context) async {
    final _name = _nameController.text;
    final _email = _emailController.text;
    final _phone = _phoneController.text;
    final _password = _passwordController.text;

    if (_formKey.currentState!.validate()) {
      final signup = signupmodel(
          name: _name, email: _email, phone: _phone, password: _password);
          final sharedpref=await SharedPreferences.getInstance();
          sharedpref.setBool(key1, true);

      await addSignup(signup);
      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx){
      //   return Homeworkout();
      // }), (route) => false);

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
        return Homeworkout();
      })); 
    } 
  } 
}
