import 'package:demo_app/LoadingScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Background Image
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            )),
        // Homepage
        child: loading_screen(),
      ),
    );
  }
}
