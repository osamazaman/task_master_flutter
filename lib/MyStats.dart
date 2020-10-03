import 'package:flutter/material.dart';
import 'package:task_master/Subchart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:task_master/Subcriberseries.dart';
import 'package:task_master/Circularproress.dart';

class stats extends StatefulWidget {

  @override
  _statsState createState() => _statsState();
}

class _statsState extends State<stats>  with SingleTickerProviderStateMixin{

  Item selectedUser;
  Item selectdetail;
  List <Item> time = <Item>[
    const Item('Weekly'),
    const Item('Monthly'),
    const Item('Yearly'),
  ];
  List <Item> detail = <Item>[
    const Item('Company'),
    const Item('Store'),

  ];
  AnimationController progressController;
  Animation<double> animation,animation2,animation3,animation4,animation5,animation6,
      animation7,animation8,animation9;

  void initState() {
    // TODO: implement initState
    super.initState();
    progressController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    animation = Tween<double>(begin: 0, end: 100).animate(progressController)
      ..addListener(() {
        setState(() {

        });
      });
  }

  final List<Subscriberseries> data =[

    Subscriberseries(
        year: "2014",
        subscriber: 7000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2015",
        subscriber: 6500,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2016",
        subscriber: 5000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    Subscriberseries(
        year: "2017",
        subscriber: 8000,
        barColor: charts.ColorUtil.fromDartColor(Colors.red)
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIEW REPORTS",style: TextStyle(fontSize: 17),),
        backgroundColor: Color.fromRGBO(26, 38, 50,1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),

      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Center(
                  child: Container(
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(width: 1),

                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,

                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: time.map((Item user) {
                            return  DropdownMenuItem(
                                value: user,
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(user.name,),
                              ),
                            );
                          }).toList(),
                  ),
                    ),
                ),
              )

              ),
              Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(width: 1),

                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,

                          value: selectdetail,
                          onChanged: (Item Value) {
                            setState(() {
                              selectdetail = Value;
                            });
                          },
                          items: detail.map((Item user) {
                            return  DropdownMenuItem(
                              value: user,
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(user.name,),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  )

              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left:110),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text('Toronto- \n'
                            'PrestigePm',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20),
                        Text('Provincial \n'
                            'Average',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20),
                        Text('National \n'
                            'Average',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),

                      ],
                  ),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(left:17,top:10,right: 17),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2)
                  ),
                  child: Column(
                    children: [
                      Container(
                         height:60 ,
                         color: Colors.red,
                         width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left:70),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('Performance \n '
                                      '    Index '
                                      ,style: TextStyle(fontSize: 11,color: Colors.white,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Text(' 77 % ',
                                      style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,top: 5),
                                child: Column(
                                  children: [
                                    Text('R',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('A', style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('N',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('K', style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Column(
                                  children: [
                                    Text('0  '

                                      ,style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8,top:8.0),
                                      child: Text('out of 630 ',
                                        style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,top: 5),
                                child: Column(
                                  children: [
                                    Text('R',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('A', style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('N',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('K', style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Column(
                                  children: [
                                    Text('0  '

                                      ,style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8,top:8.0),
                                      child: Text('out of 1336 ',
                                        style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ),



                    ],

                      ),
                        ),

                  ),
                      Container(
                        height:60 ,

                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text('SLA ',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),





                          ],

                        ),

                      ),
                      Container(
                        height:60 ,

                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Column(
                                children: [
                                  Text('No',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                  Text('Complaints ',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:10),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation4.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),





                          ],

                        ),

                      ),
                      Container(
                        height:60 ,

                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15.0,top:15),
                              child: Column(
                                children: [
                                  Text('Timely ',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                  Text('Arrivals',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),





                          ],

                        ),

                      ),
                      Container(
                        height:60 ,

                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text('SURVEYS ',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: CustomPaint(

                                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  child:

                                  GestureDetector(
                                      onTap: (){
                                        if(animation.value == 100){
                                          progressController.reverse();
                                        }else {
                                          progressController.forward();
                                        }
                                      },
                                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                                        fontSize: 10,

                                      ),))),
                                ),
                              ),
                            ),





                          ],

                        ),

                      ),
                ]),
              )



              ),
              SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text('GRAPH VIEW'
                    ,style: TextStyle(fontSize: 20),),
                ),
              ),
              Container(
                  child:chartts(
                    data: data,
                  )

              ),
              SizedBox(height: 50),




            ],
          ),
        ),
      )
    );
  }
}
class Item {
  const Item(this.name);
  final String name;

}