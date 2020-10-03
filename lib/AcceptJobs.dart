import 'package:flutter/material.dart';


class AcceptJobs extends StatefulWidget {
  @override
  _AcceptJobsState createState() => _AcceptJobsState();
}

class _AcceptJobsState extends State<AcceptJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accept Jobs", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading:IconButton(
            onPressed: () =>{
              Navigator.pop(context,
                  MaterialPageRoute),

            }

            ,icon:Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body:Container(
        height:150,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(59, 92, 111,1),
        child: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("NO JOBS AVALABLE", style: TextStyle(color: Colors.white70, fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
