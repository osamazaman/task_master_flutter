import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_master/paidFinancial.dart';

class Financials extends StatefulWidget {
  @override
  _FinancialsState createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  int _value = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contractor Account Summary"),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),

            }

            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body: Container(
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 35,),
                  Center(
                    child: Container(
                      child: Text("Contractor Account Summary", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.grey),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(26, 38, 50,1),
                      ),
                      child: FlatButton(
                        onPressed: ()=>{
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => paidFinancial()))
                        },
                        child: Text("PAID", style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(26, 38, 50,1),
                      ),
                      child: FlatButton(
                          onPressed: ()=>{
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => paidFinancial()))
                          },
                        child: Text("UN-PAID", style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
