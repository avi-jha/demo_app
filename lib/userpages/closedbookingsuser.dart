import 'package:demo_app/models/closed_bookings.dart';
import 'package:demo_app/profilepages/editprofile.dart';
import 'package:demo_app/userpages/closedbookingdetails.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClosedBookingsPageUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 8.0,
              ),
              // todo: Ratings data changes
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    // todo: date and time updates
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Booking ID: CRb1212121212',
                                style: TextStyle(color: Colors.white),
                              ),
                              new Spacer(),
                              Text(
                                'did 25 Sep 2020',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Laundry - 2 items'),
                            new Spacer(),
                            Text(
                              'CRL-017 (DEL)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Dry Cleaning - 1 items'),
                            new Spacer(),
                            Text(
                              'Has laundered \n     your items',
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Delivered on 30 Sep'),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Show Details',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Rate Services',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    // todo: date and time updates
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Booking ID: CRb1212121212',
                                style: TextStyle(color: Colors.white),
                              ),
                              new Spacer(),
                              Text(
                                'did 25 Sep 2020',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Laundry - 2 items'),
                            new Spacer(),
                            Text(
                              'CRL-017 (DEL)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Dry Cleaning - 1 items'),
                            new Spacer(),
                            Text(
                              'Has laundered \n     your items',
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Delivered on 30 Sep'),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Show Details',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Rate Services',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    // todo: date and time updates
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Booking ID: CRb1212121212',
                                style: TextStyle(color: Colors.white),
                              ),
                              new Spacer(),
                              Text(
                                'did 25 Sep 2020',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Laundry - 2 items'),
                            new Spacer(),
                            Text(
                              'CRL-017 (DEL)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Dry Cleaning - 1 items'),
                            new Spacer(),
                            Text(
                              'Has laundered \n     your items',
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Delivered on 30 Sep'),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        ClosedBookingsDetailsUser(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Show Details',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Rate Services',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
