import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/screens/admins_screens/admin_intro.dart';
import 'package:flutter/material.dart';
import '../home_page/workout_page.dart';
import 'admin_login_formPage.dart';

class Adminloginpage extends StatefulWidget {
  const Adminloginpage({Key? key}) : super(key: key);

  @override
  State<Adminloginpage> createState() => _AdminloginpageState();
}

class _AdminloginpageState extends State<Adminloginpage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isUsernameEmpty = true;
  bool isPasswordEmpty = true;
  bool formSubmitted = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    getAllworkout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) {
                          return Homeworkout();
                        }),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Admin",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'custom',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              admin_form(
                  formKey: _formKey,
                  usernameController: _usernameController,
                  isUsernameEmpty: isUsernameEmpty,
                  passwordController: _passwordController,
                  isPasswordEmpty: isPasswordEmpty,
                  formSubmitted: formSubmitted),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_usernameController.text == 'Admin' &&
                        _passwordController.text == '1234') {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (ctx) {
                        return const Adminintropage();
                      }));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text("Incorrect name or Password"),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(10),
                      ));
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "NEXT ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'custom'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "This is only for Admins",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SYAM',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
