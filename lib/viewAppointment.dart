import 'package:flutter/material.dart';

class ViewAppointment extends StatefulWidget {
  @override
  _ViewAppointmentState createState() => _ViewAppointmentState();
}

class _ViewAppointmentState extends State<ViewAppointment> {
  var _contractor = [
    '',
    'Stephen',
    'GDO North',
    'Raed Elee',
    'Darren',
    'Murad Issa'
  ];
  var _currentItemSelected = 'SELECT SUBCONTRACTOR';

  var _value = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'View Appointment',
          style: TextStyle(),
        ),
        backgroundColor: Color(0xff1a2632),
          leading:IconButton(
              onPressed: () =>{
                Navigator.pop(context,
                    MaterialPageRoute),

              }

              ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.my_location,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Container(
                    height: size.height / 17,
                    width: size.width / 1.9,
                    child: DropdownButton(
                        isExpanded: true,
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "SELECT \nSUBCONTRACTOR",
                              style: TextStyle(fontSize: 13),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Donald Elopre",
                                style: TextStyle(fontSize: 13)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Fadi Mansour",
                                style: TextStyle(fontSize: 13)),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Firas Eltelbany",
                                style: TextStyle(fontSize: 13)),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Mohammed Eltelbany",
                                style: TextStyle(fontSize: 13)),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Mohammed Eltelbany",
                                style: TextStyle(fontSize: 13)),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child:
                                Text("Stephen", style: TextStyle(fontSize: 13)),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text("GDO North",
                                style: TextStyle(fontSize: 13)),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text("Raed Elee",
                                style: TextStyle(fontSize: 13)),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child:
                                Text("Darren", style: TextStyle(fontSize: 13)),
                            value: 10,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color(0xff1a2632)),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'START LOCATION',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 3.5,
              color: Color(0xff1a2632),
            ),
          ),
        ],
      ),
    ));
  }
}
