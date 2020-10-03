import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;
  String text5;

  NoteCard({this.text1, this.text2, this.text3, this.text4, this.text5});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 5.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),
          ),
          Text(
            text2,
          ),
          Text(text3),
          Text(text4),
          Text(text5),
        ],
      ),
    );
  }
}
