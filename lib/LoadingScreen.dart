import 'package:demo_app/homepage.dart';
import 'package:flutter/material.dart';

class loading_screen extends StatefulWidget {
  @override
  _loading_screenState createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "CLOREV",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                Text(
                  "Laundry",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    letterSpacing: 6.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
