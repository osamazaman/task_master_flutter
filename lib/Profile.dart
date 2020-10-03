import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
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
                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Container(
                        height: 30,
                        color: Colors.grey,
                          child: Center(child: Text("Contact Information", style: TextStyle(fontSize: 13),))
                      ),
                    ),
                    //Contractor Name
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:110,
                              child: Text("Contractor Name")),
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
                    //Phone1 2
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right: 5),
                      child: Row(
                        children: [
                          Container(
                              width:70,
                              child: Text("Phone 1")),
                          Container(
                            width: 100,
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
                          Spacer(),
                          Container(
                              width:70,
                              child: Text("Phone 2")),
                          Spacer(),
                          Container(
                            width:100,
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
                          Container(
                              width:100,
                              child: Text("Primary Email")),
                          Container(
                            width: 240,
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
                          Container(
                              width:70,
                              child: Text("Company")),
                          Container(
                            width: 100,
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
                          Spacer(),
                          Container(
                              width:70,
                              child: Text("Fax")),
                          Container(
                            width:100,
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
                          Container(
                              width:140,
                              child: Text("Contractor Address1 : ")),
                          Container(
                            height: 40,
                            color: Colors.grey,
                            width:200,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),//Contractor Address
                    Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 5),
                    child: Row(
                      children: [
                        Container(
                            width:140,
                            child: Text("Contractor Address2 : ")),
                        Container(
                          height: 40,
                          color: Colors.grey,
                          width:200,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:18.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none
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
                          Container(
                              width:90,
                              child: Text("Postal Code")),
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
                          Container(
                              width:40,
                              child: Text("City")),
                          Container(
                            width: 110,
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
                          Container(
                            width:60,
                              child: Text("Province")),
                          Container(
                            width:120,
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
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:80,
                              child: Text("Country")),
                          Container(
                            width: 250,
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
                    //Billing Address
                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Container(
                          height: 30,
                          color: Colors.grey,
                          child: Center(child: Text("Billing Address", style: TextStyle(fontSize: 13),))
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:150,
                              child: Text("Billing Contact Person")),
                          Container(
                            width:180,
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
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:120,
                              child: Text("Billing Phone no")),
                          Container(
                            width: 210,
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
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:100,
                              child: Text("Primary Email")),
                          Container(
                            width: 230,
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
                          Container(
                              width:110,
                              child: Text("Billing Address1 : ")),
                          Container(
                            height: 40,
                            color: Colors.grey,
                            width:220,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Row(
                        children: [
                          Container(
                              width:110,
                              child: Text("Billing Address2 : ")),
                          Container(
                            height: 40,
                            color: Colors.grey,
                            width:220,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:18.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:90,
                              child: Text("Postal Code")),
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

                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right: 5),
                      child: Row(
                        children: [
                          Container(
                              width:40,
                              child: Text("City")),
                          Container(
                            width: 110,
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
                          Container(
                              width:60,
                              child: Text("Province")),
                          Container(
                            width:120,
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
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:80,
                              child: Text("Country")),
                          Container(
                            width: 250,
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
                          Container(
                              width:50,
                              child: Text("Does")),
                          Container(
                            width: 110,
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
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Container(
                                width:40,
                                child: Text("Uses")),
                          ),
                          Container(
                            width:120,
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



                    Padding(
                      padding: const EdgeInsets.only(left:5.0,right: 5),
                      child: Container(
                          height: 30,
                          color: Colors.grey,
                          child: Center(child: Text("Login Information", style: TextStyle(fontSize: 13),))
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:110,
                              child: Text("Username")),
                          Container(
                            width: 230,
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
                      padding: const EdgeInsets.only(left:5.0, right:5),
                      child: Row(
                        children: [
                          Container(
                              width:110,
                              child: Text("Password")),
                          Container(
                            width: 230,
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