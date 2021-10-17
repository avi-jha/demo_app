import 'package:demo_app/navbarpages/activebooking.dart';
import 'package:demo_app/navbarpages/closedbooking.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(
                text: 'Active Bookings',
              ),
              Tab(
                text: 'Closed Bookings',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ActiveBookingsPage(),
            ClosedBookingsList(),
          ],
        ),
            ),
    );
  }
}
