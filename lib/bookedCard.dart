import 'package:flutter/material.dart';
import 'package:task_master/BookedMap.dart';

class BookedCard extends StatelessWidget {
  String id;
  String name;
  String address;

  BookedCard({this.id, this.name, this.address});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ()=>{
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => BookedMap()))
      },
      child: Container(
        height: size.height / 12,
        width: size.width / 1.5,
        child: Row(
          children: <Widget>[
            Container(
              color: Color(0xff990101),
              width: size.width / 3.8,
              height: size.height / 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    id,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 13),
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
                left: 3.8,
                //bottom: 5,
                //top: 8,
              ),
              child: Container(
                width: size.width / 1.57,
                height: size.height / 13.8,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Color(0xff990101),
                        ),
                        Text(
                          address,
                          style: TextStyle(
                            fontSize: 6,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.navigate_next,
              color: Color(0xff990101),
            )
          ],
        ),
      ),
    );
  }
}
