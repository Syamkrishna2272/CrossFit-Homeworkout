import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../db/functions/db_functions.dart';
import '../../db/model/data_model.dart';
import 'admin_add_workout.dart';

class Adminaddwidget extends StatefulWidget {
   final List<Map<String, String>> workoutData = [
    {'title': 'BEGINNER'},
    {'title': 'ADVANCED'},

    // Add more data as needed
  ];
   Adminaddwidget({super.key});

  @override
  State<Adminaddwidget> createState() => _AdminaddwidgetState();
}

class _AdminaddwidgetState extends State<Adminaddwidget> {
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

  final _categoryController = TextEditingController();

  final _workoutnameController = TextEditingController();

  final _bodypartController = TextEditingController();

  final _repsController = TextEditingController();

  final _descriptionController = TextEditingController();

  final GlobalKey<FormState> validation = GlobalKey<FormState>();

  String? _selectedcategory;
  String? _selectedbodypart;
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: image1 != null
                                ? FileImage(image1!)
                                : const AssetImage('assets/images/advanced.jpg')
                                    as ImageProvider,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                      width: 130,
                      height: 100,
                    ),
                    Positioned(
                        top: 60,
                        left: 90,
                        child: IconButton(
                            onPressed: () {
                              fromGallery();
                            },
                            icon: const Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                            )))
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Form(
                    key: validation,
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          value: _selectedcategory,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedcategory = value;
                              print(_selectedcategory);
                            });
                          },
                          items: widget.workoutData
                              .map((Map<String, String> category) {
                            return DropdownMenuItem<String>(
                              value: category['title'],
                              child: Text(category['title']!),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                              labelText: "Category",labelStyle: TextStyle(fontFamily: 'custom'),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Workout name';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _workoutnameController,
                          decoration: const InputDecoration(
                            labelText: "Workout Name",labelStyle: TextStyle(fontFamily: 'custom'),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DropdownButtonFormField<String>(
                            value: _selectedbodypart,
                            items: bodypartList.map((String bodypart) {
                              return DropdownMenuItem<String>(
                                value: bodypart,
                                child: Text(bodypart),
                              );
                            }).toList(),
                            decoration: const InputDecoration(
                              labelText: "Body part",labelStyle: TextStyle(fontFamily: 'custom'),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _selectedbodypart = value;
                                print(_selectedbodypart);
                              });
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Reps/Time';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _repsController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          decoration: const InputDecoration(
                            labelText: "Reps/Time",labelStyle: TextStyle(fontFamily: 'custom'),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Description';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _descriptionController,
                          // textAlign: TextAlign.start,
                          decoration: const InputDecoration(
                            labelText: "Description",labelStyle: TextStyle(fontFamily: 'custom'),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 45,horizontal: 10),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            // alignLabelWithHint: true
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 75,
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        onAddButtonClicked(context);
                      },
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.red),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child:  const Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'custom',
                            fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          );
  }

  Future<void> onAddButtonClicked(context) async {
    // final _category = _categoryController.text.trim();
    final _workoutname = _workoutnameController.text.trim();
    final _reps = _repsController.text.trim();
    final _description = _descriptionController.text.trim();

    print(_selectedcategory);

    if (validation.currentState!.validate() && image1 != null) {
      final workout = Workoutmodel(
          category: _selectedcategory!,
          workoutname: _workoutname,
          bodypart: _selectedbodypart!,
          reps: _reps,
          description: _description,
          image: image!);

      await addWorkout(workout);
      Navigator.of(context).pop();

      allClear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.red,
          content: Text("Add Profile Picture ")));
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

  allClear() {
    _categoryController.text = '';
    _workoutnameController.text = '';
    _bodypartController.text = '';
    _repsController.text = '';
    _descriptionController.text = '';
    setState(() {
      image1 = null;
    });
  }
}