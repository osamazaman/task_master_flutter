import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_master/viewAppointment.dart';

class ManageAppointment extends StatefulWidget {
  @override
  _ManageAppointmentState createState() => _ManageAppointmentState();
}

class _ManageAppointmentState extends State<ManageAppointment> {
  DateTime _currentDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime _selDate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        builder: (context, child) {
          return SingleChildScrollView(
            child: child,
          );
        });
    if (_selDate != null) {
      setState(() {
        _currentDate = _selDate;
      });
    }
  }

//  var _contractor = [
//    'SELECT SUBCONTRACTOR',
//    'Donald Elopre',
//    'Fadi Mansour',
//    'Firas Eltelbany',
//    'Mohammed Eltelbany',
//    'Stephen',
//    'GDO North',
//    'Raed Elee',
//    'Darren',
//    'Murad Issa'
//  ];
//
//  var _currentItemSelected = 'SELECT SUBCONTRACTOR';

  var _value = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String _fotmatDate = DateFormat.yMMMd().format(_currentDate);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff3c5a6a),
        appBar: AppBar(
          title: Text(
            'MANAGE APPOINTMENT',
          ),
          backgroundColor: Color(0xff1a2632),
          leading:IconButton(
              onPressed: () =>{
                Navigator.pop(context,
                    MaterialPageRoute),

              }

              ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Manage Appointments',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 20),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Select Appointment Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$_fotmatDate',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.grey[400],
                            ),
                            onPressed: () {
                              _selectDate(context);
                            })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text(
                            'Select Subcontractor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: size.height / 17,
                          width: size.width / 2.4,
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
                                  child: Text("Stephen",
                                      style: TextStyle(fontSize: 13)),
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
                                  child: Text("Darren",
                                      style: TextStyle(fontSize: 13)),
                                  value: 10,
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 1.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color(0xff1a2632)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ViewAppointment()));
                      },
                      child: Text(
                        'VIEW APPOINTMENT',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
