import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier
{
  bool isAndroid = true;
  void PlatformChanger(bool value)
  {
    isAndroid = value;
    notifyListeners();
  }
}