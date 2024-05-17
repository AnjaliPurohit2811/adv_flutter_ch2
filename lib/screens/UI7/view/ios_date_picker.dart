import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI7/provider/dateprovider.dart';

class IosDate extends StatelessWidget {
  const IosDate({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('DatePicker'),),
        child: SafeArea(
          child: Column(
                children: [
          Center(
              child: Text(
            '${Provider.of<DateProvider>(context).selectedDate}',
            style: TextStyle(fontSize: 25),
          )),
          SizedBox(height: 20,),
          Container(
              height: 150,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                   Provider.of<DateProvider>(context , listen: false).datePick(value);
                },
              ),

          )
                ],
              ),
        ));
  }
}
