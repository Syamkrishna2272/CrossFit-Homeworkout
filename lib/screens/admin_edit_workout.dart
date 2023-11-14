import 'dart:io';

import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/admin_add_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Admineditworkoutpage extends StatefulWidget {
  Admineditworkoutpage({super.key, required this.editmodel});

  final Workoutmodel editmodel;

  @override
  State<Admineditworkoutpage> createState() => _AdmineditworkoutpageState();
}

class _AdmineditworkoutpageState extends State<Admineditworkoutpage> {
  final _catagoryController = TextEditingController();

  final _workoutnameController = TextEditingController();

  final _bodypartController = TextEditingController();

  final _repsController = TextEditingController();

  final GlobalKey<FormState> validation = GlobalKey<FormState>();

  @override
  void initState() {
    _catagoryController.text = widget.editmodel.catagory;
    _workoutnameController.text = widget.editmodel.workoutname;
    _bodypartController.text = widget.editmodel.bodypart;
    _repsController.text = widget.editmodel.reps;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Workout"),
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:FileImage(File(widget.editmodel.image))
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                      width: 170,
                      height: 100,
                    ),
                    Positioned(
                        top: 65,
                        left: 135,
                        child: IconButton(
                            onPressed: () {
                              fromGallery();
                            },
                            icon: Icon(Icons.camera_alt_rounded)))
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      "Catagory",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Form(
                    key: validation,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Catagory';
                            }
                            return null;
                          },
                          controller: _catagoryController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Workout Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Age';
                            }
                            return null;
                          },
                          controller: _workoutnameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Body Part",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Body Part';
                            }
                            return null;
                          },
                          controller: _bodypartController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Reps/Time",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Reps/Time';
                            }
                            return null;
                          },
                          controller: _repsController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 110,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        onAddButtonClicked(context, widget.editmodel.id);
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.red),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  Future<void> onAddButtonClicked(context, int? id) async {
    final _catagory = _catagoryController.text.trim();
    final _workoutname = _workoutnameController.text.trim();
    final _bodypart = _bodypartController.text.trim();
    final _reps = _repsController.text.trim();

    if (validation.currentState!.validate() && image != null) {
      final workout = Workoutmodel(
        id: id,
          catagory: _catagory,
          workoutname: _workoutname,
          bodypart: _bodypart,
          image: image!,
          reps: _reps);

      editAllworkout(id!,workout); 
      Navigator.of(context).pop();
    }
  }

  Future<void> fromGallery() async {
    final img1 = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (img1 != null) {
      setState(() {
        image1 = File(img1.path);
        image = image1!.path;
      });
    }
  }
}
