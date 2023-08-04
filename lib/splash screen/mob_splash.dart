import 'package:app_dsa/login/mob_log.dart';
import 'package:app_dsa/responsive/mainscreen.dart';
import 'package:app_dsa/responsive/mob_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class mobsplash extends StatelessWidget {
  const mobsplash({Key? key}) : super(key: key);
  static String routename = 'mobsplash';

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
      Future.delayed(Duration(seconds: 4), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => mob_home()));
        // Navigator.pushNamedAndRemoveUntil(
        //     context, mob_home.routename, (route) => false);
      });
    } else {
      Future.delayed(Duration(seconds: 4), () {
        Navigator.pushNamedAndRemoveUntil(
            context, moblog.routeName, (route) => false);
      });
    }

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          color: Colors.transparent,
          height: 200,
          width: 200,
          child: Image.asset("assets/image/reading.png"),
        ),
      ),
    );
  }
}
