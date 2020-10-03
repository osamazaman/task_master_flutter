import 'package:flutter/material.dart';

class HelpVids extends StatefulWidget {
  @override
  _HelpVidsState createState() => _HelpVidsState();
}

class _HelpVidsState extends State<HelpVids> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Help Videos"),
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
            itemCount: 10,
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
        child: InkWell(
          onTap: ()=>{

          },
          child: Container(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:4.0,bottom:4),
                    child: Container(
                        child:Image.asset('assets/thumb.jpg')
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Dashboard Tutorial video", style: TextStyle(fontSize: 13),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Quicktask", style: TextStyle(fontSize: 13,fontStyle: FontStyle.italic),),
                      ),
                    ],
                  ),

                ],
              )
          ),
        ),
      ),
    );
  }

}


