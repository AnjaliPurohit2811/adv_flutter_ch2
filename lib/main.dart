
import 'package:adv_flutter_ch2/screens/UI1/view/dialog.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/material_screen.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/ios_list_tile.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/list_section1.dart';
import 'package:adv_flutter_ch2/screens/UI3/view/list_section2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';
import 'package:adv_flutter_ch2/utils/adaptive_widget.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PlatformProvider())
  ],child: MyApp()),
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
      home: ListSection2(),
    );
  }
}

