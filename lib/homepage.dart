import 'package:demo_app/functions/checkbox.dart';
import 'package:demo_app/deliverypage.dart';
import 'package:demo_app/bookingpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/background.jpg"),
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
                                  Container(
                                      child: Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[800]),
                                                hintText:
                                                    "Enter Mobile Number ",
                                                fillColor: Colors.white70),
                                          ),
                                        ),
                                      ),

                                      // CheckBox and TOS line
                                      Check_box(),

                                      // Submit Button
                                      Container(
                                        child: TextButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(28.0),
                                            )),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.blue),
                                          ),
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 8.0,
                                                left: 13.0,
                                                right: 13.0),
                                            child: Text(
                                              "Request OTP",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      // enter otp and login button
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3,
                                                  height: 45.0,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        hintStyle: TextStyle(
                                                            color: Colors
                                                                .grey[800]),
                                                        hintText: "Enter OTP ",
                                                        fillColor:
                                                            Colors.white70),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 45.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.blue),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookingPage(),
                                                ),
                                              );
                                                  },
                                                  child: Text(
                                                    "Login",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
