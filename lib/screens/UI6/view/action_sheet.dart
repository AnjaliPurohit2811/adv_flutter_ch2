import 'package:flutter/cupertino.dart';

class ActionSheet extends StatelessWidget {
  const ActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                title: Text('Title'),
                message: Text('Message'),
                actions: [
                  CupertinoActionSheetAction(
                      onPressed: () {}, child: Text('Default Action')),
                  CupertinoActionSheetAction(
                      onPressed: () {}, child: Text('Normal Action')),
                  CupertinoActionSheetAction(
                      onPressed: () {},
                      child: Text(
                        'Destructive Action',
                        style: TextStyle(color: CupertinoColors.destructiveRed),
                      )),
                ],
                cancelButton: CupertinoActionSheetAction(
                    onPressed: () {},isDefaultAction: true, child: Text('Cancel')),
              );
            },
          );
        },
        child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
              color: CupertinoColors.darkBackgroundGray,
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            'ActionSheet',
            style: TextStyle(color: CupertinoColors.white, fontSize: 25),
          )),
        ),
      ),
    ));
  }
}
