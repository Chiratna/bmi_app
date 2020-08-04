import 'dart:math';

import 'package:flutter/material.dart';

class BMICalculator {
  BMICalculator({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0)
      return 'overweight';
    else if (_bmi >= 18.5)
      return 'normal';
    else
      return 'underweight';
  }

  String getMessage() {
    if (_bmi >= 25.0)
      return 'You have higher than normal body weight. Try to exercise more!!';
    else if (_bmi >= 18.5)
      return 'You have normal body weight. Good job!!';
    else
      return 'You have lower than normal body weight. Try to eat more!!';
  }
}
