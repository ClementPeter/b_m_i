import 'package:flutter/material.dart';

//Custom Cards that hold iWeight and Height Information
class CardSpace extends StatelessWidget {
  //properties
  final Widget content;
  final Widget signs;

  //Constructor
  CardSpace({@required this.content, @required this.signs});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            content,
            signs,
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Color(0XFFFD85A82),
            blurRadius: 15.0,
          ),
        ],
      ),
    );
  }
}
