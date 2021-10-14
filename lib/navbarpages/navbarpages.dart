import 'package:demo_app/navbarpages/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class MyNavBarPages extends StatefulWidget {

  @override
  _MyNavBarPagesState createState() => _MyNavBarPagesState();
}

class _MyNavBarPagesState extends State<MyNavBarPages> {
  @override
  Widget build(BuildContext context) {
    return MyBottomNavBar();
  }
}
