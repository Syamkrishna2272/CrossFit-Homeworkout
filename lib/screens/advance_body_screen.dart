import 'package:flutter/material.dart';

class Advancebodypage extends StatelessWidget {
  final String bodypart;
  const Advancebodypage({super.key, required this.bodypart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bodypart),
      ),
       
    );
  }
}
