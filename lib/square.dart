import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySquare extends StatefulWidget {
  MySquare({required this.child, required this.onItemSelected});

  final String child;
  final Function(int) onItemSelected; //int가 반환값

  @override
  MySquareState createState() => MySquareState();
}

class MySquareState extends State<MySquare> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //버튼이라고 생각하자
        height: 125,
        width: 125,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
          //borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black12, width: 3), //테두리
        ),
        child: TextButton(
          onPressed: () {
            if ('MySelf' == widget.child) {
              setState(() {
                selectedIndex = 1;
              });
            } else if ('BLOG  AND  GITHUB' == widget.child) {
              setState(() {
                selectedIndex = 2;
              });
            } else {
              setState(() {
                selectedIndex = 0;
              });
            }
            widget.onItemSelected(selectedIndex);
          },
          child: Text(
            widget.child,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
