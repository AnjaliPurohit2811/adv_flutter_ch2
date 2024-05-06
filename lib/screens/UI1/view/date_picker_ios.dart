
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerIos extends StatelessWidget {
  const DatePickerIos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeef7ff),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xffeef7ff),
        leading: const Icon(Icons.menu),
        title: const Text(
          'Date Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 400,
          child: CupertinoDatePicker(onDateTimeChanged: (DateTime value) {},
            mode: CupertinoDatePickerMode.dateAndTime,
          ),
        ),
      ),
    );
  }
}
