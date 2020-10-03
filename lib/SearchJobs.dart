import 'package:flutter/material.dart';

class searchJobs extends StatefulWidget {
  @override
  _searchJobsState createState() => _searchJobsState();
}

class _searchJobsState extends State<searchJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,

                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  child: Text("Search jobs",style: TextStyle(color:Colors.white,fontSize: 13),),
                onPressed: ()=>
                {
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

                  ),
                }),
            ),
          ),
        ],
      )
    );
  }
}
