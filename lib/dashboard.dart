import 'package:flutter/material.dart';
import 'package:task_master/booked.dart';
import 'dashboardButton.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xff1a2632),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            title: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
          body: Column(
            children: <Widget>[
              DashboardButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booked()));
                },
                text: 'Booked',
                number: '39',
              ),
              DashboardButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booked()));
                },
                text: 'Cancelled',
                number: '1243',
              ),
              DashboardButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booked()));
                },
                text: 'Completed',
                number: '16431',
              ),
              DashboardButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booked()));
                },
                text: 'New',
                number: '2',
              ),
              DashboardButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booked()));
                },
                text: 'Overage Requested',
                number: '0',
              ),
              DashboardButton(
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Booked()));},
                text: 'All Hold Requested',
                number: '12',
          ),
        ],
      ),
    ));
  }
}
