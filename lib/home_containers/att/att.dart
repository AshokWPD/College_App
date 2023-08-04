import 'package:app_dsa/home_containers/att/attup.dart';
import 'package:app_dsa/home_containers/att/list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../../model.dart';

class attview extends StatefulWidget {
  @override
  _attviewState createState() => _attviewState();
  static String routeName = 'attview';
}

class _attviewState extends State<attview> {
  // late String pdfurl;

  User? user;
  UserModel loggedInUser = UserModel();
  String rooll = '';
  var emaill;
  String id = '';
  String namee = '';
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      FirebaseFirestore.instance
          .collection("users")
          .doc(user!.uid)
          .get()
          .then((value) {
        this.loggedInUser = UserModel.fromMap(value.data());
      }).whenComplete(() {
        CircularProgressIndicator();
        setState(() {
          emaill = loggedInUser.email.toString();
          rooll = loggedInUser.rool.toString();
          id = loggedInUser.uid.toString();
          namee = loggedInUser.name.toString();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isstu = rooll != 'Student';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'ATTENDANCE ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 21,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPDF(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Color.fromARGB(255, 2, 19, 253),
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 2,
                            offset: Offset(8.0, 8.0))
                      ],
                      border: Border.all(
                          color: Color.fromARGB(255, 248, 248, 248), width: 3)),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Upload Attendance',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3.5
                            ..style = PaintingStyle.fill
                            ..color = Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFPage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Color.fromARGB(255, 2, 19, 253),
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 2,
                            offset: Offset(8.0, 8.0))
                      ],
                      border: Border.all(
                          color: Color.fromARGB(255, 248, 248, 248), width: 3)),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'View Uploades',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3.5
                            ..style = PaintingStyle.fill
                            ..color = Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





























//       body: Column(children: [
//         if (isstu)
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => UploadPDF(),
//                   ),
//                 );
//               },
//               child: Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(20)),
//                   width: 200,
//                   height: 50,
//                   child: const Center(
//                     child: Text(
//                       'Upload Attanance',
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 255, 255),
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ElevatedButton(
//           onPressed: () async {
//             // ignore: use_build_context_synchronously
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => PDFPage()),
//             );
//           },
//           child: Text('View PDF List'),
//         ),
//       ]),
//     );
//   }
// }
