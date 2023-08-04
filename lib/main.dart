import 'package:app_dsa/home_containers/leave/leave.dart';
import 'package:app_dsa/routs.dart';
import 'package:app_dsa/splash%20screen/mob_splash.dart';
import 'package:app_dsa/util/bottom_navi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

FirebaseStorage firebaseStorage = FirebaseStorage.instanceFor(
  app: Firebase.app(),
  bucket: "dsa-web-app",
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      initialRoute: mobsplash.routename,
      routes: routes,
    );
  }
}
