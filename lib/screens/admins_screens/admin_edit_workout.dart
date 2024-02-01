import 'dart:io';

import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

File? image1;
String? image;

class Admineditworkoutpage extends StatefulWidget {
  final List<Map<String, String>> workoutData = [
    {'title': 'BEGINNER'},
    {'title': 'ADVANCED'},
    // Add more data as needed
  ];
  Admineditworkoutpage({super.key, required this.editmodel});

  final Workoutmodel editmodel;

  @override
  State<Admineditworkoutpage> createState() => _AdmineditworkoutpageState();
}

class _AdmineditworkoutpageState extends State<Admineditworkoutpage> {
  final List<String> bodypartList = [
    'Chest',
    'Shoulder',
    'Leg',
    'Abs',
    'Biceps',
    'Triceps',
    'Wings'
  ];
  final _catagoryController = TextEditingController();

  final _workoutnameController = TextEditingController();

  final _bodypartController = TextEditingController();

  final _repsController = TextEditingController();

  final _descriptionController = TextEditingController();

  final GlobalKey<FormState> validation = GlobalKey<FormState>();
  String? _selectedcategory;
  String? _selectedbodypart;

  @override
  void initState() {
    _catagoryController.text = widget.editmodel.category;
    _workoutnameController.text = widget.editmodel.workoutname;
    _bodypartController.text = widget.editmodel.bodypart;
    _repsController.text = widget.editmodel.reps;
    _descriptionController.text = widget.editmodel.description!;
    _selectedbodypart = widget.editmodel.bodypart;
    _selectedcategory = widget.editmodel.category;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Workouts",
          style: TextStyle(fontFamily: 'custom'),
        ),
        centerTitle: true,
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
                              image: image1 != null
                                  ? FileImage(image1!)
                                  : FileImage(File(widget.editmodel.image))),
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
                            icon: const Icon(Icons.camera_alt_rounded)))
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Form(
                    key: validation,
                    child: Column(
                      children: [
                        Card(
                          child: DropdownButtonFormField<String>(
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
                                labelText: "Category",
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red))),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'workout name';
                              }
                              return null;
                            },
                            controller: _workoutnameController,
                            decoration: const InputDecoration(
                              labelText: "Workout name",
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: DropdownButtonFormField<String>(
                              value: _selectedbodypart,
                              items: bodypartList.map((String bodypart) {
                                return DropdownMenuItem<String>(
                                  value: bodypart,
                                  child: Text(bodypart),
                                );
                              }).toList(),
                              decoration: const InputDecoration(
                                labelText: "Body part",
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
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: TextFormField(
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
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Reps/Time",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Reps/Time';
                              }
                              return null;
                            },
                            controller: _descriptionController,
                            // textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              labelText: "Description",
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 40),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
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
                          side: const BorderSide(color: Colors.red),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: const Text(
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
    // final _category = _catagoryController.text.trim();
    final _workoutname = _workoutnameController.text.trim();
    // final _bodypart = _bodypartController.text.trim();
    final _reps = _repsController.text.trim();
    final _description = _descriptionController.text.trim();

    if (validation.currentState!.validate()) {
      final workout = Workoutmodel(
          id: id,
          category: _selectedcategory!,
          workoutname: _workoutname,
          bodypart: _selectedbodypart!,
          image: image!,
          reps: _reps,
          description: _description);

      editAllworkout(id!, workout);
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
