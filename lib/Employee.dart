import 'package:flutter/material.dart';
import 'package:task_master/EmployeeProfile.dart';

import 'package:task_master/Profile.dart';


class Employee extends StatefulWidget {
  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EMPLOYEES",style: TextStyle(fontSize: 17),),
        backgroundColor:Color.fromRGBO(26, 38, 50,1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),
      body: Container(
        child:Column(
          children:[
            Container(
              height: 20,
              color: Colors.blueGrey,
            ),
          Padding(
              padding: const EdgeInsets.only(top:5,left:20),
              child: Row(
                children: [
                  Text("Employee Name"),
                  Padding(
                    padding: const EdgeInsets.only(left:50),
                    child: Text("ID"),
                  ),

                ],

              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(

                  child:ListView.builder(
                    itemBuilder:(_,int index) => Listemp(),
                    itemCount: 10,
                  ),

                ),
              ),
            )

          ]
        )

      ),
    );
  }
}

class Listemp extends StatelessWidget{
  Widget build(BuildContext context){
    return  Padding(
        padding: const EdgeInsets.only(top:5,left:20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Donald Elopre",style: TextStyle(color:Colors.blue),),
                Padding(
                  padding: const EdgeInsets.only(left:60),
                  child: Text("704"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:100),
                  child: IconButton(icon:Icon(Icons.assignment),
                  onPressed: ()
                  {
                    showDialog(context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              title: Text("Edit"),
                              content: Container(
                                height: 70,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Do you Want to Edit the Details ?"),
                                      ],
                                    ),
                                    // Text(""),

                                    Padding(
                                      padding: const EdgeInsets.only(left:50),
                                      child: Row(
                                        children: [
                                          FlatButton(
                                            child: new Text('NO',style: TextStyle(color: Colors.green),),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          FlatButton(
                                            child: new Text('YES',style: TextStyle(color: Colors.green)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Empprofilee()),

                                              );
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
                  ),
                ),


              ],

            ),
            Divider(color: Colors.black,)
          ],
        ),

    );
    //   Card(
    //
    //   child: Padding(
    //     padding: const EdgeInsets.only(left:5,right:5,top: 5),
    //     child: Container(
    //         height: 100,
    //         child: Row(
    //           children: [
    //             Container(
    //                 child:Image.asset('assets/towel.jpg')
    //             ),
    //
    //             Column(
    //               children: [
    //                 Row(
    //                   children: [
    //                     Text("Payment: "),
    //                     Text("310 TBH",style:TextStyle(color: Colors.blue)),
    //                   ],
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(top:18.0),
    //                   child: Row(
    //                     children: [
    //                       Column(
    //                         children: [
    //                           Text("Payment due by "),
    //                           Text('29/07/2020'),
    //                         ],
    //                       ),
    //
    //
    //                     ],),
    //                 )
    //               ],
    //             ),
    //
    //             Row(
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.only(top:50.0),
    //                   child: Container(
    //                     height: 30,
    //                     color: Colors.orange,
    //                     child: FlatButton(
    //
    //                       child: Text("Payment"),
    //                     ),
    //                   ),
    //                 ),
    //
    //
    //               ],
    //
    //
    //             ),
    //             // Row(
    //             //   children: [
    //             //     Padding(
    //             //       padding: const EdgeInsets.only(right:120,top:50.0),
    //             //
    //             //     ),
    //             //   ],
    //             // )
    //
    //
    //           ],
    //         )
    //     ),
    //   ),
    // );
  }

}
