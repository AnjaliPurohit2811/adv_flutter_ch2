
import 'package:flutter/material.dart';

class Ringtone extends ChangeNotifier {
  String _selectedRingtone = '';

  String get selectedRingtone => _selectedRingtone;

  void setSelectedRingtone(String ringtone) {
    _selectedRingtone = ringtone;
    notifyListeners();
  }
}
