import 'package:flutter/material.dart';

class Fullbody extends StatelessWidget {
  const Fullbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text("7x4 CHALLENGE"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/beginner.jpg'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Week 1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        spacing: 45,
                        runSpacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("1",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("2",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("3",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("4",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("5",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("6",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("7",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Week 2",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        spacing: 45,
                        runSpacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("1",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("2",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("3",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("4",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("5",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("6",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("7",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Week 3",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        spacing: 45,
                        runSpacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("1",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("2",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("3",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("4",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("5",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("6",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("7",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Week 4",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        spacing: 45,
                        runSpacing: 30,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("1",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("2",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("3",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("4",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("5",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("6",
                                style: TextStyle(color: Colors.black)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text("7",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   style: ElevatedButton.styleFrom(

                      //       side:  const BorderSide(color: Colors.red),
                      //       backgroundColor: Colors.red[900],
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(18))),
                      //   child: const Text(
                      //     "GO",
                      //     style: TextStyle(
                      //         fontFamily: 'SYAM',
                      //         color: Colors.white,
                      //         fontSize: 15,
                      //         fontWeight: FontWeight.w600),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
