// import 'package:flutter/material.dart';

// class BmiCalculator extends StatefulWidget {
//   const BmiCalculator({super.key});

//   @override
//   State<BmiCalculator> createState() => _BmiCalculatorState();
// }

// class _BmiCalculatorState extends State<BmiCalculator> {
//   TextEditingController heightController = TextEditingController();
//   TextEditingController weightController = TextEditingController();
//   double bmiResult = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.redAccent[700],
//           title: Text(
//             "Body Mass Index",
//             style: TextStyle(fontFamily: 'custom', fontSize: 18),
//           ),
//           centerTitle: true,
//         ),
//         body: SafeArea(
//           child:
//               //      Padding(
//               //   padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
//               //   child: Column(
//               //     children: [
//               //       TextFormField(
//               //         keyboardType: TextInputType.number,
//               //         decoration: const InputDecoration(
//               //           labelText: "Enter Your Height(Cm)",
//               //           filled: true,
//               //           prefixIcon: Icon(Icons.arrow_upward),
//               //           labelStyle: TextStyle(
//               //             fontFamily: 'SYAM',
//               //             color: Colors.black,
//               //             fontSize: 17,
//               //             fontWeight: FontWeight.w600,
//               //           ),
//               //           border: OutlineInputBorder(),
//               //           enabledBorder: OutlineInputBorder(
//               //             borderSide: BorderSide(color: Colors.red),
//               //           ),
//               //         ),
//               //       ),
//               //       Padding(
//               //         padding: const EdgeInsets.only(top: 25),
//               //         child: TextFormField(
//               //           keyboardType: TextInputType.number,
//               //           decoration: const InputDecoration(
//               //             labelText: "Enter Your Weight(Kg)",
//               //             filled: true,
//               //             prefixIcon: Icon(Icons.accessibility),
//               //             labelStyle: TextStyle(
//               //               fontFamily: 'SYAM',
//               //               color: Colors.black,
//               //               fontSize: 17,
//               //               fontWeight: FontWeight.w600,
//               //             ),
//               //             border: OutlineInputBorder(),
//               //             enabledBorder: OutlineInputBorder(
//               //               borderSide: BorderSide(color: Colors.red),
//               //             ),
//               //           ),
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // )
//               Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: heightController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter your height (cm)',
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               TextField(
//                 controller: weightController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter your weight (kg)',
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: calculateBMI,
//                 child: Text('Calculate BMI'),
//               ),
//               SizedBox(height: 16.0),
//               Text('BMI Result: ${bmiResult.toStringAsFixed(2)}'),
//             ],
//           ),
//         ));
//   }

   
  

// }
