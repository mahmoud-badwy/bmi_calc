import 'dart:math';

import 'package:flutter/cupertino.dart';

class MyProvider with ChangeNotifier {
  double heightValue = 160;
  double wieghtValue = 75;
  double ageValue = 30;
  bool isMale = true;
  bool isFemale = false;
  late double result;
  void onMale() {
    if (isMale != true) {
      isMale = true;
      isFemale = false;
      notifyListeners();
    }
  }

  void onFemale() {
    if (isFemale != true) {
      isFemale = true;
      isMale = false;
      notifyListeners();
    }
  }

  void changeHeight(val) {
    heightValue = val;
    notifyListeners();
  }

  void incrementWeight() {
    wieghtValue++;
    notifyListeners();
  }

  void decrementWeight() {
    wieghtValue--;
    notifyListeners();
  }

  void incrementAge() {
    ageValue++;
    notifyListeners();
  }

  void decrementAge() {
    ageValue--;
    notifyListeners();
  }

  void bmiCalc() {
    result = wieghtValue / pow(heightValue / 100, 2);
    notifyListeners();
  }
}
