
import 'package:cross_fit/screens/warm_up_page.dart';
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
      body: SafeArea(
          child: SingleChildScrollView(
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
                  buildWeekContainer(context),
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
                  buildWeekContainer(context),
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
                  buildWeekContainer(context),
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
                  buildWeekContainer(context),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  

  buildWeekContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 45,
          runSpacing: 30,
          children: List.generate(
            7,
            (index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) {
                    return warmUp();
                  }),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
