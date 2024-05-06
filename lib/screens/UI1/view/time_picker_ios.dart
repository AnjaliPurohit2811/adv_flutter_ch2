
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerIos extends StatelessWidget {
  const TimePickerIos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeef7ff),
      appBar: AppBar(
        backgroundColor: Color(0xffeef7ff),
        elevation: 5,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Time Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 350,
          child: CupertinoTimerPicker(onTimerDurationChanged: (Duration value) {

          },),
        ),
      ),
    );
  }
}
