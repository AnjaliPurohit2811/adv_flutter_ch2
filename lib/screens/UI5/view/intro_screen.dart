import 'package:adv_flutter_ch2/screens/UI5/view/intro1.dart';
import 'package:adv_flutter_ch2/screens/UI5/view/intro2.dart';
import 'package:adv_flutter_ch2/screens/UI5/view/intro3.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Intro1Screen(),
          Intro2Screen(),
          Intro3Screen(),
        ],
      ),
    );
  }
}
