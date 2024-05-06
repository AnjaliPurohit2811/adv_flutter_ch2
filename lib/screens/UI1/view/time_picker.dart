import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF7FF),
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: const Color(0xffEEF7FF),
        leading: const Icon(Icons.menu),
        title: const Text(
          'Time Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
            onPressed: () async {
              TimeOfDay timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ) ??
                  TimeOfDay.now();
            },
            icon: const Icon(
              Icons.watch_later_outlined,
              size: 40,
            )),
      ),
    );
  }
}
