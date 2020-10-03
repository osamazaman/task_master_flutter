import 'package:flutter/material.dart';
import 'package:task_master/AcceptanceView.dart';

class AcceptJobsAvailable extends StatefulWidget {
  @override
  _AcceptJobsAvailableState createState() => _AcceptJobsAvailableState();
}

class _AcceptJobsAvailableState extends State<AcceptJobsAvailable> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ACCEPT JOBS"),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),

            }

            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(59, 92, 111,1),
        child: Container(
          child: ListView.builder
            (itemBuilder: (_,int index)=>Listcard(),
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}

class Listcard extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Card(
      elevation:5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:5,top: 5),
        child: Container(
            height: 500,
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
                      width: MediaQuery.of(context).size.width-18,
                      child: Row(
                        children: [
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
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left:8),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(26, 38, 50,1),),
                    child: Center(
                      child: FlatButton(

                        onPressed: ()=>{
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Acceptance())),
                        },

                        child: Center(
                          child: Container(
                              width:60,
                              child: Text("View Job", style: TextStyle(color: Colors.white, fontSize:13 ),)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,)

              ],
            )
        ),
      ),
    );
  }

}


