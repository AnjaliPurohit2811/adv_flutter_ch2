import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/button.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/listtile.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidScreen extends StatelessWidget {
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey,
        title: Text(
          'Android Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        centerTitle: true,
        actions: [
          Switch(
            value:
            Provider.of<PlatformProvider>(context, listen: true).isAndroid,
            onChanged: (value) {
              Provider.of<PlatformProvider>(context, listen: false)
                  .PlatformChanger(value);
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          indicator(),
          listTileAndroid(),
          materialButton(context),
        ],
      ),
    );
  }
}
