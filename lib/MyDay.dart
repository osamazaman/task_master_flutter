import 'package:flutter/material.dart';
import 'package:task_master/Areas.dart';
import 'package:task_master/DayCard.dart';
import 'bookedCard.dart';

class MyDay extends StatefulWidget {
  @override
  _MyDayState createState() => _MyDayState();
}

class _MyDayState extends State<MyDay> {
  var _value = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                'My Day',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                          Text(
                            'Morning',
                            style: TextStyle(
                                color: Color(0xff1a2632), fontSize: 15
                            ),
                          ),
                          Spacer(),
                          Text(
                            '07:00AM - 12:00PM',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemBuilder: (_, int index) => Listcard(),
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Listcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(3),
              bottomLeft: Radius.circular(3),
              topRight: Radius.circular(3),
              topLeft: Radius.circular(3)),
        ),
        child: InkWell(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AreasCovered()))
          },
          child: DayCard(
            id: '1102825',
            name: 'Gail Loughridge',
            address: '50, FESTOON PL, BRAMPTON, Ontario L6T4R4',
          ),
        ),
      ),
    );
  }
}
