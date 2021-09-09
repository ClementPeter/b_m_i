import 'package:body_mass_index/screen/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:body_mass_index/constants.dart';

void main() {
  runApp(InputScreen());
}

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.black45,
          elevation: 30.0,
          centerTitle: true,
          title: Text(
            "BMI Calculator",
            style: kAppBarTextStyle,
          ),
        ),
        body: InputPage(),
      ),
    );
  }
}
