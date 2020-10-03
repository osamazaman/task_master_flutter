import 'package:flutter/material.dart';
import 'bookedCard.dart';

class Booked extends StatefulWidget {
  @override
  _BookedState createState() => _BookedState();
}

class _BookedState extends State<Booked> {
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
            'Dashboard',
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
            Container(
              color: Color(0xff25334d),
              height: size.height / 19,
              width: size.width / 1,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: size.height / 21,
                    width: size.width / 4.5,
                    child: DropdownButton(
                        dropdownColor: Color(0xff1a2632),
                        isExpanded: true,
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Booked",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Cancelled",
                                style: TextStyle(fontSize: 13,
                                color: Colors.white)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Completed",
                                style: TextStyle(fontSize: 13,color: Colors.white)),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("New", style: TextStyle(fontSize: 13,color: Colors.white)),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Overage Requested",
                                style: TextStyle(fontSize: 13,color: Colors.white)),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("All Hold Requested",
                                style: TextStyle(fontSize: 13,color: Colors.white)),
                            value: 6,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[

                      Text(
                        'JOBS OVER DUE',
                        style: TextStyle(
                          color: Color(0xff9f4b4f), fontSize: 13
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Aug 27, 2020',
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
    return Card(
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
        onTap: () => {},
        child: BookedCard(
          id: '1102825',
          name: 'Gail Loughridge',
          address: '50, FESTOON PL, BRAMPTON, Ontario L6T4R4',
        ),
      ),
    );
  }
}
