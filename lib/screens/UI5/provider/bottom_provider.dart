import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier{
  int bottomIndex=0;

  void changeIndex(int value){
    bottomIndex = value;
    notifyListeners();
  }
}