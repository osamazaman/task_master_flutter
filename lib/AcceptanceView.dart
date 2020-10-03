import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Acceptance extends StatefulWidget {
  @override
  _AcceptanceState createState() => _AcceptanceState();
}

class _AcceptanceState extends State<Acceptance> {
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async {
    _time = await showTimePicker(context: context,
        initialTime: _time);
setState(() {
  _time = picked;
  print(_time);
});

  }



  int _value = 1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Acceptance View"),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),
            }
            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body:Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10,top:10),
                    child: Container(
                      color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  color: Colors.green,
                                  width: MediaQuery.of(context).size.width-20,
                                  child: Row(
                                    children: [
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:4.0,bottom:4),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:4,top:4.0),
                                          child: Text("JOB PRIORITY", style: TextStyle(fontSize:13,color: Colors.white),),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          width:180,
                                          child: Text("3 days, 8 hours and 7 minutes",style: TextStyle(fontSize:13,color: Colors.white),)),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:40,
                                          child: Text("Job ID", style: TextStyle(fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,
                                        child: Text("1111111", style: TextStyle(fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:150
                                          ,child: Text("Customers City Pickering", style: TextStyle(fontSize: 13),)),
                                    ),
                                    SizedBox(width: 100,),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,
                                          child: Text("Client's Name", style: TextStyle(fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,
                                        child: Text("Canadian Tire Services", style: TextStyle(fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,
                                          child: Text("Date/Time", style: TextStyle(fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,
                                        child: Text("Sep 29,2020 Afternoon 12PM - 5PM", style: TextStyle(fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,
                                          child: Text("Product Name", style: TextStyle(fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,
                                        child: Text("GDO - Basic Installation |1981152 | - CT", style: TextStyle(fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,
                                          child: Text("Product Quantity", style: TextStyle(fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150
                                        ,child: Text("1.0", style: TextStyle(fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,
                                          child: Text("Product Price", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,
                                        child: Text("\$89.25", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0,bottom: 3),
                                      child: Container(
                                          width:100,child: Text("Total", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                    ),
                                    Spacer(),
                                    Container(
                                        width:150,child: Text("-----", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              decoration: BoxDecoration(
                              border:Border(bottom: BorderSide(width: 2))
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                        width:70,
                                        child: Text("Technician", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                    Spacer(),
                                    Container(
                                      width: 150,
                                      child: DropdownButton(
                                          isExpanded: true,
                                          value: _value,
                                          items: [
                                            DropdownMenuItem(
                                              child: Text("Fadi", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text("guy", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13)),
                                              value: 2,
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
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                        width:100,
                                        child: Text("Time on task", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                    Spacer(),
                                    Container(
                                      width: 150,
                                      child: DropdownButton(
                                          isExpanded: true,
                                          value: _value,
                                          items: [
                                            DropdownMenuItem(
                                              child: Text("0:00", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text("0:15", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13)),
                                              value: 2,
                                            ),
                                            DropdownMenuItem(
                                              child: Text("0:30", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13)),
                                              value: 3,
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
                              padding: const EdgeInsets.only(top:10,left:8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide()),
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                        width:100,
                                        child: Text("Appointment Time", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 13),)),
                                    Spacer(),
                                    Container(
                                      width: 180,
                                      child:IconButton(
                                        icon: Icon(Icons.alarm),
                                        onPressed: (){
                                          selectTime(context);
                                        },

                                      )
                                    ),
                                  ],

                                ),
                              ),
                            ),





                          ],
                        ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left:10,right: 10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0, right:10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,left:8),
                        child: Container(
                          height: 40,
                          width: 120,
                          color: Color.fromRGBO(26, 38, 50,1),
                          child: FlatButton(
                            onPressed: ()=>{
                              // Acceptance View
                            },
                            child: Text("Map View", style: TextStyle(color: Colors.white, fontSize:13 ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            color: Color.fromRGBO(26, 38, 50,1),
                            child: FlatButton(
                              onPressed: ()=>{
                                // Acceptance View
                              },
                              child: Text("Accept job", style: TextStyle(color: Colors.white, fontSize:13 ),),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 120,
                            color: Color.fromRGBO(26, 38, 50,1),
                            child: FlatButton(
                              onPressed: ()=>{
                                // Acceptance View
                              },
                              child: Text("Decline Job", style: TextStyle(color: Colors.white, fontSize:13 ),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}


