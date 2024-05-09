import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/date_picker.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/dialog.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/indicator_ios.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/list_tile.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class IosScreen extends StatelessWidget {
  const IosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iOS Screen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatformProvider>(context, listen: true).isAndroid,
          onChanged: (value) {
            Provider.of<PlatformProvider>(context,listen: false).PlatformChanger(value);
          },),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            activityIndiacator(),
            button(context),
            datePicker(),
            listTile(),
            timePicker(),
          ],
        ),
      ),
    );
  }
}
