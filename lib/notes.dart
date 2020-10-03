import 'package:flutter/material.dart';
import 'noteCard.dart';

class Drawer_notes extends StatefulWidget {
  @override
  _Drawer_notesState createState() => _Drawer_notesState();
}

class _Drawer_notesState extends State<Drawer_notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        backgroundColor: Color.fromRGBO(26, 38, 50, 1),
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
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Container(
            child: ListView.builder(
              itemBuilder: (_, int index) => Listcard(),
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class Listcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color(0xff1db6d6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            topLeft: Radius.circular(3)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: InkWell(
          onTap: () => {},
          child: NoteCard(
            text1: '1154623',
            text2: 'Fadi123',
            text3: 'Contractor',
            text4: '9/25/2020 4:10:33 PM',
            text5: 'The contractor has started work',
          ),
        ),
      ),
    );
  }
}
