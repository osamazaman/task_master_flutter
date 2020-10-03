import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  int _value = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),

            }

            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(59, 92, 111,1),
          child: Padding(
            padding: const EdgeInsets.only(right:8.0,left:8),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70,),
                    Center(
                      child: Container(
                        height: 40,
                        width: 150,
                        color: Colors.grey,
                        child: FlatButton(
                          color: Colors.white70,
                          child: Text("RESET PASSWORD", style: TextStyle(fontSize: 13),),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Please Enter your id"),
                    Container(
                      height: 40,
                      color: Colors.white70,
                      width:MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("Select User Role"),
                    Container(
                      height: 40,
                      width:MediaQuery.of(context).size.width,
                      child:
                      DropdownButton(
                        isExpanded: true,
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("contractor", style: TextStyle(fontWeight: FontWeight.bold),),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("subcontractor"),
                              value: 2,
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),

                    ),
                    Text("Current password"),
                    Container(
                      height: 40,
                      color: Colors.grey,
                      width:MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text("New Password"),
                    Container(
                      height: 40,
                      color: Colors.grey,
                      width:MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text("Re-enter New password"),
                    Container(
                      height: 40,
                      color: Colors.grey,
                      width:MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            color: Colors.lightBlue,
                            child: FlatButton(
                              child: Text("Cancel", style: TextStyle(color: Colors.white),),
                              color: Colors.lightBlue,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Container(
                              height: 50,
                              width: 100,
                              color: Color.fromRGBO(26, 38, 50,1),
                              child: FlatButton(
                                child: Text("Submit", style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 150,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
