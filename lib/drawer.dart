import 'package:flutter/material.dart';
import 'package:task_master/AcceptJobsAvailable.dart';
import 'package:task_master/Calendar.dart';
import 'package:task_master/Complains.dart';
import 'package:task_master/Profile.dart';
import 'package:task_master/QuickTaskVideos.dart';
import 'package:task_master/ResetPw.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_master/login.dart';
import 'package:task_master/manageAppointment.dart';
import 'package:task_master/notes.dart';
import 'Home.dart';
import 'button.dart';

class drawersr {
  var heightq,widthq;
  drawersr(this.widthq,this.heightq);
  Widget drawers(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 7),
                color: Colors.black87,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      height: MediaQuery.of(context).size.height / 13,
                      child: Text(
                        'Main Menu',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Button(
                  onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hdash()));
              },
                  text: 'Home',
                  leadicon: Icons.home,
                  endtext: ''),
              Button(
                  onpressed: () {
                    showDialog(context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              title: Text("Search Jobs"),
                              content: Container(
                                height: 100,
                                child: Column(
                                  children: [
                                    TextField(
                                        decoration: InputDecoration(
                                          border: new UnderlineInputBorder(
                                              borderSide: new BorderSide(
                                                color: Colors.green,
                                              )
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.mic),
                                          ),
                                        )
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left:50),
                                      child: Row(
                                        children: [
                                          FlatButton(
                                            child: new Text('CANCEL',style: TextStyle(color: Colors.green),),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          FlatButton(
                                            child: new Text('SEARCH',style: TextStyle(color: Colors.green)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    )




                                  ],
                                ),
                              ),
                            )

                    );
                  },
                  text: 'Search jobs',
                  leadicon: Icons.search,
                  endtext: ''),
              Button(
                onpressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => AcceptJobsAvailable()));
                },
                text: 'Accept jobs',
                endtext: '',
                leadicon: Icons.find_replace,
              ),
              Button(
                  onpressed: () {},
                  text: 'Live chat support',
                  leadicon: Icons.chat_bubble,
                  endtext: ''),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Drawer_notes()));
                    }
                  },
                  text: 'Notes',
                  leadicon: Icons.chat,
                  endtext: '738'),
              Button(
                onpressed: () {
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calendarr()));
                  }
                },
                text: 'Calender',
                leadicon: Icons.calendar_view_day,
                endtext: '',
              ),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ManageAppointment()));
                    }
                  },
                  text: 'Manage appointments',
                  leadicon: Icons.location_on,
                  endtext: ''),
              Button(
                onpressed: () {
                Fluttertoast.showToast(
                    msg: "Notifications are turned on",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
                text: 'Notification',
                endtext: '',
                leadicon: Icons.notifications,
              ),
              Button(
                onpressed: () {
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TabCase()));
                  }
                },
                text: 'Complaints',
                endtext: '42',
                leadicon: Icons.compare_arrows,
              ),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    }
                  },
                  text: 'Constructor Profile',
                  leadicon: Icons.assignment_ind,
                  endtext: ''),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ResetPass()));
                    }
                  },
                  text: 'Reset Password',
                  leadicon: Icons.lock_open,
                  endtext: ''),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QTvideos()));
                    }
                  },
                  text: 'Tutorials',
                  leadicon: Icons.timelapse,
                  endtext: ''),
              Button(
                  onpressed: () {},
                  text: 'Clear Job cycle',
                  // leadicon: Icons.cleaning_services,
                  endtext: ''),
              Button(
                  onpressed: () {},
                  text: 'Change Language',
                  // leadicon: Icons.east_rounded,
                  endtext: ''),
              Button(
                  onpressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }
                  },
                  text: 'Logout',
                  // leadicon: Icons.logout,
                  endtext: ''),
            ],
          ),
        ),
      ),
    );
  }
}