import 'package:flutter/material.dart';

class Beginnerbodypage extends StatelessWidget {
  final String bodypart;

  const Beginnerbodypage({super.key,required this.bodypart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bodypart),
      ),
      body: Center( 
        // child: Text('Information or exercises related to $bodypart'),
      ), 
    );
  }
}