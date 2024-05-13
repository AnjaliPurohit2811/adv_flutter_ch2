import 'package:adv_flutter_ch2/screens/UI4/model/bottemlist.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/range_slider.dart';
import 'package:flutter/cupertino.dart';

class BottemTab extends StatelessWidget {
  const BottemTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar:  CupertinoNavigationBar(
          middle: Text(
            'Kindacode.com',
            style: TextStyle(fontSize: 22),
          ),
          trailing: CupertinoButton(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RangeSliderChange()));
            },
              child: Icon(CupertinoIcons.chevron_forward , color: CupertinoColors.systemGrey,)),

        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
          ]),
          tabBuilder: (context, index) {
            return Center(child: Text(BottemList[index]));
          },
        ));
  }
}
