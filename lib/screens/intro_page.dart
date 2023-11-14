
import 'package:cross_fit/screens/signup_page.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/intro.jpg'),
                        fit: BoxFit.contain )),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 10,
                    // ),
                    const Text(
                      "IT'S TIME ",
                      style: TextStyle(
                        fontFamily: 'custom',
                          color: Colors.black,
                          fontSize: 30 ,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "TO GET",
                      style: TextStyle(
                        fontFamily: 'custom',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "STRONGER",
                      style: TextStyle(
                        fontFamily: 'custom', 
                          color: Colors.black,
                          fontSize: 30 ,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return SignupScreen() ;
                          }));
                        },
                        child: Text(
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
                                side: BorderSide(color: Colors.red),
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
}
