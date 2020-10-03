import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paidFinancial extends StatefulWidget {
  @override
  _paidFinancialState createState() => _paidFinancialState();
}

class _paidFinancialState extends State<paidFinancial> {
  var _value=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Financial"),
        leading: IconButton(
          onPressed: () =>{
          Navigator.pop(context,
          MaterialPageRoute),

          },
          icon:Icon(Icons.arrow_back)
        ),
        backgroundColor:Color.fromRGBO(26, 38, 50,1) ,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8),
        child: Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3,),
                  Container(
                      width:250,
                      child: Text("Contractor A/C Summary: Paid Summary", style: TextStyle(fontSize: 14),)),
                 Row(
                   children: [
                     Container(
                       width: 150,
                       child: TextField(
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'JOB ID',

                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: Colors.blue,
                            )),
                          ),
                        ),
                     ),
                     Spacer(),
                     Container(
                       width: 180,
                       child: TextField(
                         decoration: InputDecoration(
                           hintText: 'TICKET NO #',

                           border: new UnderlineInputBorder(
                               borderSide: new BorderSide(
                                 color: Colors.blue,
                               )),
                         ),
                       ),
                     ),

                   ],
                 ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        child: DropdownButton(
                            isExpanded: true,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Select",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("30 Days Due",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("60 Days Due",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("90 Days Due",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("6 Month Due",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                value: 5,
                              ),
                              DropdownMenuItem(
                                child: Text("12 Month Due",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                value: 6,
                              ),

                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 140,
                        color: Color.fromRGBO(26, 38, 50,1),
                        child: FlatButton(
                          child: Text("Search", style: TextStyle(fontSize:14,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 4)),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 20,
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            width:200,
                            child: Text("Total Receipt Amount After Tax:", style: TextStyle(fontSize: 13),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          child: Text("1220377.62", style: TextStyle(fontSize: 13)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2,),
                  Container(
                    height: 20,
                    color: Colors.grey[400],
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            width:200,
                            child: Text("Total Receipt Amt:", style: TextStyle(fontSize: 13),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          child: Text("1079944.33", style: TextStyle(fontSize: 13)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2,),
                  Container(
                    height: 20,
                    color: Colors.grey[600],
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            width:200,
                            child: Text("Total No of Paid Jobs:", style: TextStyle(fontSize: 13),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          child: Text("16373", style: TextStyle(fontSize: 13)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 4)),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: ListView.builder
                    (itemBuilder: (_,int index)=>Listcard(),
                    itemCount: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Listcard extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: Row(
              children: [
                Container(
                    width:30,child: Text("Job Id", style: TextStyle(fontSize: 10),)),
                Spacer(),
                Container(
                    width:150,child: Text("195988", style: TextStyle(fontSize: 10)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: DottedLine(),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: Row(
              children: [
                Container(
                    width:150,
                    child: Text("Receipt#", style: TextStyle(fontSize: 10))),
                Spacer(),
                Container(
                    width:150,
                    child: Text("1211241",style: TextStyle(fontSize: 10)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: DottedLine(),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: Row(
              children: [
                Container(
                    width:150,
                    child: Text("Payment Date", style: TextStyle(fontSize: 10))),
                Spacer(),
                Container(
                    width:150,
                    child: Text("Mar 15 2015 12:00 AM",style: TextStyle(fontSize: 10)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: DottedLine(),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: Row(
              children: [
                Container(width:150,
                    child: Text("Ticket Number", style: TextStyle(fontSize: 10))),
                Spacer(),
                Container(
                    width:150,
                    child: Text("007912241997",style: TextStyle(fontSize: 10)))
              ],
            ),
          ),
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 4)),
            ),
          ),

        ],
      ),
    );
  }

}