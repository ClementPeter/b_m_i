import 'package:flutter/material.dart';
import 'package:body_mass_index/constants.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

//Custom Widget created for the Calculate and Recalulate with the Shimmer feature
class BottomContainer extends StatelessWidget {
  //properties
  final Function onpress;
  final String title;

  //Contructors
  BottomContainer({this.onpress, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Shimmer(
          duration: Duration(seconds: 3),
          interval: Duration(milliseconds: 500),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(maxHeight: 80.0, minHeight: 60.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0XFFFD85A82),
            ),
            child: Center(
              child: Text(
                title,
                style: kBottomContainerTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
