
import 'package:adv_flutter_ch2/screens/UI4/view/bottem_tab.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/components/image_add.dart';
import 'package:adv_flutter_ch2/screens/UI4/view/slider_segement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI4/provider/rangeprovider.dart';



RangeSliderprovider? slidingProvidertrue;
RangeSliderprovider? slidingProviderfalse;

class RangeSliderChange extends StatelessWidget {
  const RangeSliderChange({super.key});

  @override
  Widget build(BuildContext context) {
    slidingProviderfalse = Provider.of<RangeSliderprovider>(context, listen: false);
    slidingProvidertrue = Provider.of<RangeSliderprovider>(context, listen: true);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text('Display & Brightess'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.chevron_right , color: CupertinoColors.systemGrey,),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => SliderSegement(),
            ));
          },
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: Text('APPEARANCE'),
                children: [
                  CupertinoListTile(title: imageAdd()),
                  CupertinoListTile(
                    title: Text('Automatic'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.isAuto,
                      onChanged: (value) {
                        slidingProviderfalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: Text('BRIGHTNESS'),
                footer: Text(
                    'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.'),
                children: [
                  CupertinoListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.sun_min , color: CupertinoColors.systemGrey),
                        CupertinoSlider(
                          value: slidingProvidertrue!.rangeslindervalue,
                          onChanged: (value) {
                            slidingProviderfalse!.rangeSliderChangeValue(value);
                          },
                        ),
                        Icon(CupertinoIcons.sun_max_fill , color: CupertinoColors.systemGrey)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('True Tone'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.istone,
                      onChanged: (value) {
                        slidingProviderfalse!.truetone(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Night Shift'),
                    additionalInfo: Row(
                      children: [
                        Text('Sunset to Sunrise'),
                        Icon(CupertinoIcons.chevron_right , color: CupertinoColors.systemGrey)
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Auto-Lock'),
                    additionalInfo: Row(
                      children: [
                        Text('3 Minutes'),
                        Icon(CupertinoIcons.chevron_right , color: CupertinoColors.systemGrey,)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('Raise to Wake'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.isWake,
                      onChanged: (value) {
                        slidingProviderfalse!.raisetowake(value);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
