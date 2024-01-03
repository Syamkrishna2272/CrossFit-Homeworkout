import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class admin_form extends StatelessWidget {
  const admin_form({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController usernameController,
    required this.isUsernameEmpty,
    required TextEditingController passwordController,
    required this.isPasswordEmpty,
    required this.formSubmitted,
  })  : _formKey = formKey,
        _usernameController = usernameController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _usernameController;
  final bool isUsernameEmpty;
  final TextEditingController _passwordController;
  final bool isPasswordEmpty;
  final bool formSubmitted;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: _usernameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter username';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.account_box_sharp,
                  color: Colors.black,
                ),
                labelText: "Username :",
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: isUsernameEmpty ? Colors.red : Colors.blue),
                ),
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter password';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock,color: Colors.black,),
                labelText: "Password :",
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isPasswordEmpty || !formSubmitted
                        ? Colors.red
                        : Colors.blue,
                  ),
                ),
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'custom'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
