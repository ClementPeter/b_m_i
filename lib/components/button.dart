import 'package:flutter/material.dart';

//Custom Widget created for the Add and Subtract Button
class Button extends StatelessWidget {
  final Widget label;
  final Function onpress;

  Button({this.label, this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: label,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      fillColor: Colors.grey,
      constraints: BoxConstraints.tightFor(height: 60.0, width: 60.0),
    );
  }
}
