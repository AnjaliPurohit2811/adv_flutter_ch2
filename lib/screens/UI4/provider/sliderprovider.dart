import 'package:flutter/cupertino.dart';

class SliderSegementProvider extends ChangeNotifier
{
  int slidingIndex = 0;

  void changeSlider(String value)
  {
    slidingIndex = int.parse(value);
    notifyListeners();
  }
}