import 'package:flutter/material.dart';
import 'package:task_master/HelpVids.dart';
import 'package:task_master/TutorialVids.dart';
// import 'package:task_master/TutorialVids.dart';

class QTvideos extends StatefulWidget {
  @override
  _QTvideosState createState() => _QTvideosState();
}

class _QTvideosState extends State<QTvideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Task Videos"),
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
        child: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text("Tutorial Videos", style: TextStyle(color: Colors.white,),),
              InkWell(
                onTap: ()=>{
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TutorialVids()))
                },
                child: Container(
                  height: 250,
                  // width: 500,
                  child: Image.asset('assets/help.jpg'),
                ),
              ),
              SizedBox(height: 15,),
              Text("Help Videos", style: TextStyle(color: Colors.white,),),
              InkWell(
                onTap: ()=>{
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HelpVids()))
                },
                child: Container(
                  height: 250,
                  // width: 500,
                  child: Image.asset('assets/help.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
