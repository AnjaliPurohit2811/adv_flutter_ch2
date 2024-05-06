
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetIos extends StatelessWidget {
  const ActionSheetIos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeef7ff),
      appBar: AppBar(
        backgroundColor: Color(0xffeef7ff),
        elevation: 5,
        leading: Icon(CupertinoIcons.app),
        title: const Text(
          'Action Sheet ',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: const Text(
                    'Favorite Dessert',
                    style: TextStyle(fontSize: 16),
                  ),
                  message: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'Please select the best dessert from the\noptions below.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Profiteroles',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cannolis',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Trifle',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: true,
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(CupertinoIcons.share_up , size: 40,),
        ),
      ),
    );
  }
}
