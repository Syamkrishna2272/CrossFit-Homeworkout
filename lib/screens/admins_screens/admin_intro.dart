import 'package:cross_fit/screens/admins_screens/admin_add_workout.dart';
import 'package:flutter/material.dart';
import '../challenges_screen/week_challenges/snackbar_page.dart';
import 'admin_intro_expand.dart';

class Adminintropage extends StatelessWidget {
  final String? selectedCategory;
  final String? selectedbodypart;
  const Adminintropage({Key? key, this.selectedCategory, this.selectedbodypart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.red[700],
        title: const Text(
          "Admin",
          style: TextStyle(fontFamily: 'custom'),
        ),
        centerTitle: true,
        actions: [
          // IconButton(
          //     onPressed: () {
          //       showDialog(
          //           context: context,
          //           builder: (ctx) {
          //             return AlertDialog(
          //               content: Text("Do you want to Logout ?"),
          //               actions: [
          //                 TextButton(
          //                     onPressed: () {
          //                       logout(context);
          //                     },
          //                     child: Text("Yes")),
          //                 TextButton(
          //                     onPressed: () {
          //                       Navigator.of(context).pop();
          //                     },
          //                     child: Text("No"))
          //               ],
          //             );
          //           });
          //     },
          //     icon: Icon(Icons.logout_rounded))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Add Custom Workout ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'custom'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create Your own customized workout by  ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SYAM',
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "click on + icon ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SYAM',
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
            const AdminintroExpanded(),
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Adminaddworkoutpage();
                  }));
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
