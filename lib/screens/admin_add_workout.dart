import 'dart:io';

import 'package:cross_fit/db/functions/db_functions.dart';
import 'package:cross_fit/db/model/data_model.dart';
import 'package:cross_fit/screens/admin_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'beginner_body_screen.dart';

File? image1;
String? image;

class Adminaddworkoutpage extends StatefulWidget {
  final List<Map<String,String>> workoutData = [
    {'title': 'BEGINNER'},
    {'title': 'ADVANCED'},

    // Add more data as needed
  ];

  Adminaddworkoutpage({super.key});

  @override
  State<Adminaddworkoutpage> createState() => _AdminaddworkoutpageState();
}

class _AdminaddworkoutpageState 
extends State<Adminaddworkoutpage> {
  String? category;
  final _categoryController = TextEditingController();

  final _workoutnameController = TextEditingController();
 
  final _bodypartController = TextEditingController();

  final _repsController = TextEditingController();

  final _descriptionController = TextEditingController();

  final GlobalKey<FormState> validation = GlobalKey<FormState>();

  String? _selectedcategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Workout"),
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
                              labelText: "Category",
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red))),
                        ),
                        SizedBox(
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
                          controller: _workoutnameController,
                          decoration: const InputDecoration(
                            labelText: "Workout Name",
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
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Body Part';
                            }
                            return null;
                          },
                          controller: _bodypartController,
                          decoration: const InputDecoration(
                            labelText: "Body Parts",
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
                            labelText: "Reps/Time",
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
                              return 'Enter Reps/Time';
                            }
                            return null;
                          },
                          controller: _descriptionController,
                          textAlign: TextAlign.start,
                          decoration: const InputDecoration(
                            labelText: "Description",
                            contentPadding: EdgeInsets.symmetric(vertical: 50),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
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
                        onAddButtonClicked(context);
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

  Future<void> onAddButtonClicked(context) async {
    // final _category = _categoryController.text.trim();
    final _workoutname = _workoutnameController.text.trim();
    final _bodypart = _bodypartController.text.trim();
    final _reps = _repsController.text.trim();
    final _description = _descriptionController.text.trim();

    print(_selectedcategory);

    if (validation.currentState!.validate() && image1 != null) {
      final workout = Workoutmodel(
          category: _selectedcategory!,
          workoutname: _workoutname,
          bodypart: _bodypart,
          reps: _reps,
          description: _description,
          image: image!);

      await addWorkout(workout);
      Navigator.of(context).pop();
          

      // Navigator.push(context, MaterialPageRoute(builder: (ctx){
      //   return Adminintropage();
      // }));

   
      //   Navigator.push(context, MaterialPageRoute(builder: (ctx) {
      //     int index=0;
      //     return Beginnerbodypage(
      //        bodypart: [_bodypart],
      //         category: _selectedcategory!);
      //   }));
      

      // final selectedcategory = widget.workoutData
      //     .firstWhere((category) => category['title'] == _selectedcategory);
      // final bodyParts = [selectedcategory['bodyPart']];

      // Navigator.push(context, MaterialPageRoute(builder: (ctx){
      //   String bodyPart=BEGI['title']??'';
      //   List<Exercise>exercise=getExercisesForBodypart(bodypart);
      //   return Beginnerbodypage(bodypart: _bodypart,exerciseList:exercise);
      // }));

      

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
