import 'dart:io';
import 'package:cross_fit/screens/admins_screens/add_widget.dart';
import 'package:flutter/material.dart';

File? image1;
String? image;

class Adminaddworkoutpage extends StatefulWidget {
  final List<Map<String, String>> workoutData = [
    {'title': 'BEGINNER'},
    {'title': 'ADVANCED'},
  ];

  Adminaddworkoutpage({super.key}); 

  @override
  State<Adminaddworkoutpage> createState() => _AdminaddworkoutpageState();
}

class _AdminaddworkoutpageState extends State<Adminaddworkoutpage> {
  final List<String> bodypartList = [
    'Chest',
    'Shoulder',
    'Leg',
    'Abs',
    'Biceps',
    'Triceps',
    'Wings'
  ];
  String? category;
  String? bodypart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Workout",
          style: TextStyle(fontFamily: 'custom'),
        ),
        backgroundColor: Colors.red[700],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Adminaddwidget(),
        )),
      ),
    );
  }
}
