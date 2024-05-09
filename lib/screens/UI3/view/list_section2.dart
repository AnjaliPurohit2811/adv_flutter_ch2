import 'package:flutter/cupertino.dart';

class ListSection2 extends StatelessWidget {
  const ListSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            'Settings',
            style: TextStyle(fontSize: 22),
          ),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: Text(
                      'General',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/settings.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Display & Brightness',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/star.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Wallpaper',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/wallpaper.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Sound',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/sound.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Touch ID & Passcode',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/finger.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Privacy',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/hand.jpg'),
                    trailing: Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: Text(
                      'iCloud',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/icloud.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                  CupertinoListTile.notched(
                    title: Text(
                      'iTunes & App Store',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/app.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                  CupertinoListTile.notched(
                    title: Text(
                      'Passbook & Apple Pay',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/Passbook.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: Text(
                      'Mail , Contacts , Calenders',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/mail.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                  CupertinoListTile.notched(
                    title: Text(
                      'Notes',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/note.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                  CupertinoListTile.notched(
                    title: Text(
                      'Reminders',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Image.asset('asset/img/reminder.jpg' ),
                    trailing: Icon(CupertinoIcons.forward , color: CupertinoColors.systemGrey,),),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
