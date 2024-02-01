import 'package:cross_fit/db/functions/advance_function.dart';
import 'package:cross_fit/db/functions/signup_function.dart';
import 'package:cross_fit/db/model/signup_data_model.dart';
import 'package:cross_fit/screens/home_page/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersonalinfoEdit extends StatefulWidget {
  final signupmodel data;
  const PersonalinfoEdit({Key? key, required this.data}) : super(key: key);

  @override
  State<PersonalinfoEdit> createState() => _PersonalinfoEditState();
}

class _PersonalinfoEditState extends State<PersonalinfoEdit> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  final GlobalKey<FormState> validation = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _nameController.text=widget.data.name;
    // _emailController.text=widget.data.email;
    // _phoneController.text=widget.data.phone;
    // _heightController.text=widget.data.height;
    // _weightController.text=widget.data.weight;
    _nameController = TextEditingController(text: widget.data.name);
    _emailController = TextEditingController(text: widget.data.email);
    _phoneController = TextEditingController(text: widget.data.phone);
    _heightController = TextEditingController(text: widget.data.height);
    _weightController = TextEditingController(text: widget.data.weight);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("data==${widget.data.id}");
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 2.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Edit Profile",
            style: TextStyle(fontFamily: 'custom'),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: validation,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: _nameController,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'custom'),
                    textCapitalization: TextCapitalization.words,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter name";
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'custom',
                          color: Colors.white,
                          fontSize: 15,
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'custom'),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                          fontFamily: 'custom',
                          color: Colors.white,
                          fontSize: 15,
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
                    controller: _phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter phone number";
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'custom'),
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Phone",
                      filled: true,
                      fillColor: Colors.black54,
                      labelStyle: TextStyle(
                        fontFamily: 'custom',
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 110,
                      child: TextFormField(
                        controller: _heightController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Height";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'custom'),
                        inputFormatters: [LengthLimitingTextInputFormatter(3)],
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Height",
                          filled: true,
                          fillColor: Colors.black54,
                          labelStyle: TextStyle(
                            fontFamily: 'custom',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 110,
                      child: TextFormField(
                        controller: _weightController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Height";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'custom'),
                        inputFormatters: [LengthLimitingTextInputFormatter(3)],
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Weight",
                          filled: true,
                          fillColor: Colors.black54,
                          labelStyle: TextStyle(
                            fontFamily: 'custom',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        onUpdatebutton(context, widget.data);
                      },
                      child: Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black54,
                        ),
                        child: Center(
                            child: Text(
                          "Updated",
                          style: TextStyle(
                              fontFamily: 'custom',
                              color: Colors.white,
                              fontSize: 12),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onUpdatebutton(context, signupmodel data) async {
    print(data.id);
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final phone = _phoneController.text.trim();
    final height = _heightController.text.trim();
    final weight = _weightController.text.trim();

    if (validation.currentState!.validate()) {
      final info = signupmodel(
          id: data.id,
          name: name,
          email: email,
          phone: phone,
          password: data.password,
          height: height,
          weight: weight);

      editallprofile(data.id!, info);
      Navigator.of(context).pop();
    }
  }
}
