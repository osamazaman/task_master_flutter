import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_master/Areas.dart';
import 'package:task_master/Employee.dart';
import 'package:task_master/MyDay.dart';
import 'package:task_master/MyFinancials.dart';
import 'package:task_master/MyStats.dart';
import 'package:task_master/booked.dart';
import 'package:task_master/dashboard.dart';
import 'package:task_master/drawer.dart';

class hdash extends StatefulWidget {
  @override
  _hdashState createState() => _hdashState();
}
// class _hdashState extends State<hdash> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(drawer: Drawercustom(), body: Mybody());
//   }
// }

class _hdashState extends State<hdash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:drawersr(20.0,20.0).drawers( context),
        body: SafeArea(

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,


            child: Center(

              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(

                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints.expand(),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/bg.jpeg"),
                            fit:BoxFit.cover
                            )

                          )

                        ),


                      // Image.asset(
                      //   "assets/color.jpeg",
                      //   width: MediaQuery.of(context).size.width,



                      //),
                      Column(
                        children: [
                          SizedBox(height: 40,),
                          Align(
                            alignment: Alignment.topCenter,
                            child: InkWell(
                              child: Container(

                                height: 120,
                                width: 100,
                                // child: Column(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //
                                //     Text("My Day",style: TextStyle(
                                //         color: Colors.white,
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 12
                                //     ),),
                                //     SizedBox(height: 5,),
                                //     Icon(Icons.calendar_today),
                                //
                                //
                                //
                                //   ],
                                // ),

                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => MyDay()));

                              },


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              children: [
                                InkWell(
                                  child: Container(

                                    height: 100,
                                    width: 70,
                                    // child: Column(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text("0",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontSize: 20
                                    //     ),),
                                    //     SizedBox(height: 5,),
                                    //     Text("No Data",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 12
                                    //     ),)
                                    //   ],
                                    // ),

                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => stats()));
                                  },
                                ),
                                Spacer(),
                                InkWell(
                                  child: Container(

                                    height: 100,
                                    width: 70,
                                    // child: Column(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text("5",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontSize: 20
                                    //     ),),
                                    //     SizedBox(height: 5,),
                                    //     Text("Shop",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 12
                                    //     ),)
                                    //   ],
                                    // ),

                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Financials())
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 0,right: 0,top: 30),
                            child: Row(
                              children: [
                                InkWell(
                                  child: Container(

                                    height: 120,
                                    width: 80,
                                    // child: Column(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text("1",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontSize: 20
                                    //     ),),
                                    //     SizedBox(height: 5,),
                                    //     Text("Inactive",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 12
                                    //     ),)
                                    //   ],
                                    // ),

                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => AreasCovered()));
                                  },
                                ),
                                Spacer(),
                                InkWell(
                                  child: Container(

                                    height: 120,
                                    width: 80,
                                    // child: Column(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text("0",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontSize: 20
                                    //     ),),
                                    //     SizedBox(height: 5,),
                                    //     Text("Idle",style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 12
                                    //     ),)
                                    //   ],
                                    // ),

                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Employee()));
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(top:0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Dashboard()));
                                },
                                child: Container(

                                  height: 100,
                                  width: 100,
                                  // child: Column(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: [
                                  //
                                  //     Text("My Day",style: TextStyle(
                                  //         color: Colors.white,
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 12
                                  //     ),),
                                  //     SizedBox(height: 5,),
                                  //     Icon(Icons.calendar_today),
                                  //
                                  //
                                  //
                                  //   ],
                                  // ),

                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                                // onTap: () {
                                //   Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => Dashboard()));
                                // },


                              ),
                            ),
                          ),
                          SizedBox(height: 20,),

                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Builder(
                          builder: (BuildContext context){
                            return
                              InkWell(
                                child: Container(
                                  // padding: EdgeInsets.only(bottom: 5),
                                  width: 50,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only( topLeft: Radius.circular(120) , bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2,left: 2),
                                    child: IconButton(

                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.transparent,
                                      onPressed: ()=>{
                                        Scaffold.of(context).openDrawer(),

                                      },
                                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                                    ),
                                  ),
                                ),
                              );
                          },
                        ),
                      ),
                      // Center(
                      //     child: InkWell(
                      //       child: CircleAvatar(
                      //         // backgroundColor: Colors.white,
                      //         radius: 55,
                      //         // child: Column(
                      //         //   mainAxisAlignment: MainAxisAlignment.center,
                      //         //   children: [
                      //         //     Text("7",style: TextStyle(
                      //         //         color: Colors.black,
                      //         //         fontWeight: FontWeight.bold,
                      //         //         fontSize: 30
                      //         //     ),),
                      //         //     SizedBox(height: 5,),
                      //         //     Text("Total",style: TextStyle(
                      //         //         color: Colors.black,
                      //         //         fontSize: 17
                      //         //     ),)
                      //         //   ],
                      //         // ),
                      //
                      //       ),
                      //       onTap: () {
                      //         Fluttertoast.showToast(
                      //             msg: "This is clickable",
                      //             toastLength: Toast.LENGTH_SHORT,
                      //             gravity: ToastGravity.BOTTOM,
                      //             timeInSecForIosWeb: 1,
                      //             backgroundColor: Colors.black,
                      //             textColor: Colors.white,
                      //             fontSize: 16.0
                      //         );
                      //       },
                      //     )),
                    ],
                  ),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(360)
                  ),

                ),
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
