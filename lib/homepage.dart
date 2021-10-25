import 'package:demo_app/functions/checkbox.dart';
import 'package:demo_app/deliverypage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String verId;

  String phone;

  bool codeSent = false;

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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: Column(
                                      children: [
                                        codeSent
                                            ? OTPTextField(
                                                length: 6,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fieldWidth: 30,
                                                style: TextStyle(fontSize: 20),
                                                textFieldAlignment:
                                                    MainAxisAlignment.spaceAround,
                                                fieldStyle: FieldStyle.underline,
                                                onCompleted: (pin) {
                                                  verifyPin(pin);
                                                },
                                              )
                                            : IntlPhoneField(
                                                decoration: InputDecoration(
                                                    labelText: 'Phone Number',
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide())),
                                                initialCountryCode: 'IN',
                                                onChanged: (phoneNumber) {
                                                  setState(() {
                                                    phone = phoneNumber
                                                        .completeNumber;
                                                  });
                                                },
                                              ),
                                        SizedBox(
                                          height: 10,
                                        ),

                                        Check_box(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            verifyPhone();
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

  verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          final snackBar = SnackBar(content: Text("Login Success"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        verificationFailed: (FirebaseAuthException e) {
          final snackBar = SnackBar(content: Text("${e.message}"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        codeSent: (String verficationId, int resendToken) {
          setState(() {
            codeSent = true;
            verId = verficationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            verId = verificationId;
          });
        },
        timeout: Duration(seconds: 60));
  }

  Future<void> verifyPin(String pin) async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      final snackBar = SnackBar(content: Text("Login Success"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(content: Text("${e.message}"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
