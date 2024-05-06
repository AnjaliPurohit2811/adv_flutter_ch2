import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/utils/color_list.dart';
import 'package:adv_flutter_ch2/screens/UI2/provider/platform.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        backgroundColor: secondarycolor,
        title: Text('Android Platform'),
        actions: [
          Switch(
              value: Provider.of<PlatformProvider>(context, listen: true).isAndroid,
              onChanged: (value) {Provider.of<PlatformProvider>(context, listen: false)
                  .PlatformChanger(value);})
        ],
      ),
    );
  }
}
