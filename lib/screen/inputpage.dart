import 'package:flutter/material.dart';
import 'package:body_mass_index/calculator.dart';
import 'package:body_mass_index/components/bottomcontainer.dart';
import 'package:body_mass_index/components/cardspace.dart';
import 'package:body_mass_index/components/button.dart';
import 'package:body_mass_index/screen/resultpage.dart';
import 'package:body_mass_index/constants.dart';

//Screens that shows then main options (Weight and Height)nselection
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Default values for Weight and Height
  int weight = 50;
  int height = 250;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo.png'), //BackgroundImage
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CardSpace(
                  content: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('WEIGHT', style: kMainTextStyle),
                          Text('in kg', style: kSubTextStyle),
                        ],
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      )
                    ],
                  ),
                  //Add and remove Buttons
                  signs: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        label: Icon(
                          Icons.add,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onpress: () {
                          setState(
                            () {
                              weight++;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 50.0),
                      Button(
                        label: Icon(
                          Icons.remove,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onpress: () {
                          setState(() {
                            weight--;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CardSpace(
                  content: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('HEIGHT', style: kMainTextStyle),
                          Text('in cm', style: kSubTextStyle),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(height.toString(), style: kNumberTextStyle),
                    ],
                  ),
                  signs: Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 500,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    activeColor: Color(0XFFEB1555),
                    inactiveColor: Color(0XFF8D8E98),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              BottomContainer(
                title: "CALCULATE",
                onpress: () {
                  Calculator calc = Calculator(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmi: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        resultDesciption: calc.resultDescription(),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
