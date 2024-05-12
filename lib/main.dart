

import 'package:adv_flutter_ch2/screens/UI1/view/dialog.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/material_screen.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/ios_list_tile.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/list_section1.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/list_section2.dart';
import 'package:adv_flutter_ch2/screens/UI4/provider/rangeprovider.dart';
import 'package:adv_flutter_ch2/screens/UI4/provider/sliderprovider.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/bottem_tab.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/slider_segement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';
import 'package:adv_flutter_ch2/utils/adaptive_widget.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/range_slider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PlatformProvider()),
    ChangeNotifierProvider(create: (context) => SliderSegementProvider()),
    ChangeNotifierProvider(create: (context) => RangeSliderprovider()),
  ],child: const MyApp()),
  );

}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       home:IosListTile(),
//
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: BottemTab(),
    );
  }
}

