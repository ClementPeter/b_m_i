import 'package:body_mass_index/components/bottomContainer.dart';
import 'package:body_mass_index/components/cardspace.dart';
import 'package:body_mass_index/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String resultText;
  final String resultDesciption;

  ResultPage({
    @required this.bmi,
    @required this.resultText,
    @required this.resultDesciption,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 50.0),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black45,
        elevation: 40.0,
        title: Text("RESULT", style: kAppBarTextStyle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 150),
                  child: CardSpace(
                      content: Text(resultText.toUpperCase(),
                          style: kResultTextStyle),
                      signs: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("$bmi", style: kBmiTextStyle),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 10.0, bottom: 50),
                            child: Text(
                              "$resultDesciption",
                              textAlign: TextAlign.center,
                              style: kResultDescriptionTextStyle,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 100.0),
                BottomContainer(
                  title: "RE-CALCULATE",
                  onpress: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
