import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  String id;
  String name;
  String address;

  DayCard({this.id, this.name, this.address});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 9,
      width: size.width / 1.5,
      child: Row(
        children: <Widget>[
          Container(
            color: Color(0xff1a2632),
            width: size.width / 4,
            height: size.height / 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  id,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(
                    '07:00 AM',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 5,
              top: 8,
            ),
            child: Container(
              width: size.width / 1.6,
              height: size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        address,
                        style: TextStyle(
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Text("Booked", style: TextStyle(fontSize: 13),)
                ],
              ),
            ),
          ),
          Icon(
            Icons.navigate_next,
            color: Color(0xff1a2632),
          )
        ],
      ),
    );
  }
}
