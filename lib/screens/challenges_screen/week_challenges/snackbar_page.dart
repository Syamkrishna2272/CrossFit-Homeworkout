

import 'package:flutter/material.dart';

import '../../admins_screens/admin_login.dart';

Snackbar(context, String text){
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          behavior: SnackBarBehavior.floating,
          duration:const Duration(seconds: 1),
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
          content: Text(text)));
}




Future<void> logout(BuildContext context) async {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return Adminloginpage();
    }), (route) => false);
  }

  deleteButtonClickedYes(ctx) {
    ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
      content: Text("Successfully Deleted"),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 1),
    ));
  }