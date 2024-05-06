import 'package:adv_flutter_ch2/screens/UI1/view/action_sheet_ios.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/date_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/date_picker_ios.dart';
<<<<<<< HEAD
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker_ios.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
=======
import 'package:adv_flutter_ch2/screens/UI1/view/dialog.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/UI1/view/time_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/UI2/view/material/material_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PlatformProvider())
  ]));
>>>>>>> 22b777d (Initial commit)
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: ActionSheetIos(),
=======
      home: MaterialScreen(),
>>>>>>> 22b777d (Initial commit)
    );
  }
}


