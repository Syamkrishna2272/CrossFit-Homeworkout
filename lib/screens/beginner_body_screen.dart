import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Exercise{
  final String name;
  final String bodyPart;
  final String category;

  Exercise({required this.name,required this.bodyPart,required this.category});
}

class Beginnerbodypage extends StatelessWidget {

  final String bodypart;

  Beginnerbodypage({super.key,required this.bodypart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bodypart),
      ),
      // body: SafeArea(
      //   child: 
      //   // ListView.builder(
      //   //   itemCount: exerciseList.length  ,
      //   //   itemBuilder: (context,index){
      //   //     return ListTile(
      //   //       title: Text(exerciseList[index].name  )
      //   //     );

      //   // }
      //   // )
      //   ) 
    );
  }
}