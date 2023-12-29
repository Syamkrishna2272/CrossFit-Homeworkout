

import 'package:flutter/material.dart';

Snackbar(context, String text){
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          behavior: SnackBarBehavior.floating,
          duration:const Duration(seconds: 1),
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
          content: Text(text)));
}