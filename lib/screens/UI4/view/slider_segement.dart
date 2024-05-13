import 'package:adv_flutter_ch2/screens/UI4/provider/sliderprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../model/slidelist.dart';

class SliderSegement extends StatelessWidget {
  const SliderSegement({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            middle: Text('Title'),
            largeTitle: Center(
              child: CupertinoSlidingSegmentedControl(
                groupValue: Provider.of<SliderSegementProvider>(context, listen: true)
                    .slidingIndex
                    .toString(),
                thumbColor: CupertinoColors.systemGrey2,
                children: {
                  '0': Text(
                    'First',
                    style: TextStyle(fontSize: 20),
                  ),
                  '1': Text(
                    'Second',
                    style: TextStyle(fontSize: 20),
                  ),
                  '2': Text(
                    'Third',
                    style: TextStyle(fontSize: 20),
                  ),
                },
                onValueChanged: (value) {
                  Provider.of<SliderSegementProvider>(context, listen: false)
                      .changeSlider(value!);
                },
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                Slide[Provider.of<SliderSegementProvider>(context).slidingIndex],
              ),
            ),
          )
        ],
      ),
    );
  }
}
