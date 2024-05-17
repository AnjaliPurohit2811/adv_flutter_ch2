import 'package:adv_flutter_ch2/screens/UI4/provider/rangeprovider.dart';
import 'package:adv_flutter_ch2/screens/UI4/provider/sliderprovider.dart';
import 'package:adv_flutter_ch2/screens/UI5/provider/bottom_provider.dart';
import 'package:adv_flutter_ch2/screens/UI7/provider/dateprovider.dart';
import 'package:adv_flutter_ch2/screens/UI7/view/ios_date_picker.dart';
import 'package:adv_flutter_ch2/screens/UI7/view/practice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PlatformProvider()),
    ChangeNotifierProvider(create: (context) => SliderSegementProvider()),
    ChangeNotifierProvider(create: (context) => RangeSliderprovider()),
    ChangeNotifierProvider(create: (context) => BottomProvider()),
    ChangeNotifierProvider(create: (context) => DateProvider(),),
  ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Practice(),

    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: IosDate(),
//     );
//   }
// }

