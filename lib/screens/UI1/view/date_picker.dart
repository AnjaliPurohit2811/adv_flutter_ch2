
import 'package:flutter/material.dart';

DateTime dateTime = DateTime.now();
final TextEditingController dateController = TextEditingController();

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF7FF),
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: Color(0xffEEF7FF),
        leading: const Icon(Icons.menu),
        title: const Text(
          'Date Picker',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
        child: TextField(
          controller: dateController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'MM/DD/YYYY',
            suffixIcon: IconButton(
              onPressed: () async {
                DateTime selectedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1947),
                  lastDate: DateTime(2047),
                ) ??
                    DateTime.now();
                String viewDate =
                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                dateController.text = viewDate;
              },
              icon: const Icon(Icons.calendar_today),
            ),
          ),
        ),
      ),
    );
  }
}
