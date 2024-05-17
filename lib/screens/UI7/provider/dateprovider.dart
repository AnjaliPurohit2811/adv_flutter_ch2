
import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier
{
  DateTime selectedDate = DateTime.now();

  void datePick (value)
  {
    // showDatePicker(context: context, firstDate: DateTime(1947), lastDate: DateTime(2047));
    selectedDate = value! ;
    notifyListeners();
  }

}