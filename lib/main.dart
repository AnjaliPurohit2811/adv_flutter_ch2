import 'package:adv_flutter_ch2/screens/UI1/view/action_sheet_ios.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/date_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/date_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker_ios.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActionSheetIos(),
    );
  }
}


