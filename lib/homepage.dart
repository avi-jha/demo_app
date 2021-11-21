import 'package:demo_app/functions/checkbox.dart';
import 'package:demo_app/deliverypage.dart';
import 'package:demo_app/userpages/bookingtabs.dart';
import 'package:demo_app/userpages/userhomepage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/background.webp"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome Text
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "How",
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                            Text(
                              "CLOREV",
                              style: TextStyle(
                                  fontSize: 50.0, color: Colors.white),
                            ),
                            Text(
                              "Works",
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 10),

                      // curved card shape for sign in/ sign up
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          ),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                children: [
                                  // input area text fields
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: Column(
                                      children: [

                                        SizedBox(
                                          height: 10,
                                        ),

                                        Check_box(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    UserHomePage(),
                                              ),
                                            );
                                          },
                                          child: Text("Verify"),
                                        ),
                                        // divider with text in between
                                        Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 25.0),
                                                  child: Divider(
                                                    thickness: 3.0,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Or Sign In as"),
                                              ),
                                              Expanded(
                                                  child: Container(
                                                margin: const EdgeInsets.only(
                                                    right: 25.0),
                                                child: Divider(
                                                  thickness: 3.0,
                                                  color: Colors.black,
                                                ),
                                              )),
                                            ],
                                          ),
                                        ),

                                        // Links to new pages
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              onPressed: () {/* ----- */},
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Service Provider",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .keyboard_arrow_right_outlined,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DeliveryPage(),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Delivery Partner",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .keyboard_arrow_right_outlined,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
