import 'package:flutter/material.dart';

class holdjob extends StatefulWidget {
  @override
  _holdjobState createState() => _holdjobState();
}

class _holdjobState extends State<holdjob> {

  int dropvalue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOLD JOB",style: TextStyle(fontSize: 17),),
        backgroundColor:Color.fromRGBO(26, 38, 50,1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),
      body: Container(
        height: 600,
        color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width,
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height/1.2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10,top:10),
                          child: Container(
                              width:100,
                              child: Text("SPECIFY REASON FOR HOLD",style: TextStyle(color: Color.fromRGBO(26, 38, 50,1)),)),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10,left:12),
                          child: Container(
                            height: 50,
                            width: 130,
                            color: Colors.grey,
                            child: Center(child: Text("Job Id: 1102825")),
                          ),
                        )
                      ],
                    ),
                    Container(

                    padding: EdgeInsets.only(top:20.0),
                    child: DropdownButton(
                    value: dropvalue,

                    items: [
                        DropdownMenuItem(


                        child: Text("Customer/Pending-Incomplete Renovation",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        value: 1,
                        ),
                        DropdownMenuItem(
                        child: Text("Customer/Pending-Incomplete Renovation",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        value: 2,
                           ),
                        DropdownMenuItem(
                        child: Text("Customer/Pending-Incomplete Renovation",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        value: 3
                        ),
                        DropdownMenuItem(
                        child: Text("Customer/Pending-Incomplete Renovation",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        value: 4
                        )
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropvalue = value;
                          });
                        }),

                  ),
                    Padding(
                      padding: const EdgeInsets.only(top:20,right: 230),
                      child: Container(
                        width: 90,

                        child: Text("Pending",style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:5, right: 5),
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
                                  suffixIcon: Icon(Icons.calendar_today)
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      child: TextField(
                        decoration: new InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                          ),
                            hintText: 'Please enter your comments'
                        ),
                      ),

                    ),
                    Spacer(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:5,left:10),
                          child: Container(
                            color: Color.fromRGBO(26, 38, 50,1),
                            height: 40,
                            width: 100,
                            child: FlatButton(
                              child: Text("Add Photo", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:5,left:10),
                          child: Container(
                            color: Color.fromRGBO(26, 38, 50,1),
                            height: 40,
                            width: 100,
                            child: FlatButton(
                              child: Text("Add Video", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:5,left:10),
                          child: Container(
                            color: Color.fromRGBO(26, 38, 50,1),
                            height: 40,
                            width: 100,
                            child: FlatButton(
                              child: Text("Save", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                      ],
                    ),



                ]),
              ),
            )







          ],
        )

      ),

    );
  }
}
