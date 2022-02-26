import 'dart:math';

//class the performs all the arithimethic logic

class Calculator {
  //properties
  final int weight;
  final int height;
  double bmis;

  //Contructor to enable the class take variables
  Calculator({this.weight, this.height});

  //method to calculate BMI value
  String calculateBMI() {
    double calcBmi = weight / pow(height / 100, 2);
    bmis = calcBmi;
    return bmis.toStringAsFixed(1);
  }

  //method to get result in text
  String getResult() {
    //print(getResult());
    if (bmis <= 18) {
      return "UNDERWEIGHT";
    } else if (bmis >= 18 && bmis <= 30) {
      return "NORMAL";
    } else {
      return "OVERWEIGHT";
    }
  }

  // Method to get result description in text
  String resultDescription() {
    //print(resultDescription());
    if (bmis <= 18) {
      return "Your BMI is lower than expected; Eat more healthy foods.";
    } else if (bmis > 18 && bmis <= 30) {
      return "You have a normal body to weight ratio.";
    } else {
      return "Your body to weight ratio is higher than normal; Exercise frequently to avoid Obesity.";
    }
  }
}
