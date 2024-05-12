

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../range_slider.dart';

Padding imageAdd() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('asset/img/lock2.jpeg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Light'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value:Brightness.light,
              groupValue: slidingProvidertrue!.brightness,
              onChanged: (value) {
                slidingProviderfalse!.changeTheme(value ?? Brightness.light);
              },
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('asset/img/lock1.jpeg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Dark'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value: Brightness.dark,
              groupValue: slidingProvidertrue!.brightness,
              onChanged: (value) {
                slidingProviderfalse!.changeTheme(value ?? Brightness.dark);
              },
            )
          ],
        ),
      ],
    ),
  );
}
