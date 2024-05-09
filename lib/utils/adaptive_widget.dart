
import 'package:adv_flutter_ch2/screens/UI2/view/cupertino/cupertino_screen.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/material_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(Provider.of<PlatformProvider>(context, listen: true).isAndroid){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AndroidScreen(),
      );
    }
    else{
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: IosScreen(),
      );
    }
  }
}
