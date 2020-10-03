import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Empprofilee extends StatefulWidget {
  @override
  _EmpprofileeState createState() => _EmpprofileeState();
}

class _EmpprofileeState extends State<Empprofilee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom:8),
                      child: Container(
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            maxRadius: 40,
                          ),
                        ),
                      ),
                    ),
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromRGBO(26, 38, 50,1),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10,),
                    //Contact information

                    //Contractor Name
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:110,
                                child: Text("Employee Name:")),
                          ),
                          Container(
                            width: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left:18,bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.black,
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Address
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:130,
                                child: Text("Employee Address:")),
                          ),
                          Container(
                            width: 210,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),


                    //Details
                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:150,
                                child: Text("Employee Postal Code:")),
                          ),
                          Container(
                            width: 180,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:110,
                                child: Text("Employee Phone:")),
                          ),
                          Container(
                            width: 220,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:30,
                                child: Text("Ex# ")),
                          ),
                          Container(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    //Contractor Address
                    Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:18.0),
                          child: Container(
                              width:110,
                              child: Text("Employee Email: ")),
                        ),
                        Container(
                          width: 220,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:18.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.black,
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                    //postal code
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:80,
                                child: Text("User Name:")),
                          ),
                          Container(
                            width:250,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //city province
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Container(
                                width:140,
                                child: Text("Employee Password:")),
                          ),
                          Container(
                            width: 190,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    //Country

                    Center(
                      child: Container(
                        color: Color.fromRGBO(26, 38, 50,1),
                        height: 50,
                        width: 100,
                        child: FlatButton(
                          child: Text("Cancel", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0, size.height-30);
    var controlPoint=Offset(0,size.height);
    var endPoint= Offset(size.width/2, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){

    return true;
  }
}