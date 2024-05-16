import 'package:adv_flutter_ch2/screens/UI6/model/img_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContextMenuScreen extends StatelessWidget {
  const ContextMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.line_horizontal_3,
          size: 25,
          color: CupertinoColors.black,
        ),
        middle: Text(
          'Gallery',
          style: TextStyle(fontSize: 25),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Albums',
                          style: TextStyle(color: CupertinoColors.activeBlue),
                        ),
                        Icon(CupertinoIcons.chevron_down)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Icon(CupertinoIcons.search),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(CupertinoIcons.ellipsis_vertical),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3 / 4),
                itemBuilder: (context, index) =>
                    GridViewImg(images[index]['img']),
                itemCount: images.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget GridViewImg(String img) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: CupertinoContextMenu(
        actions: [CupertinoContextMenuAction(onPressed : () {

        },trailingIcon: CupertinoIcons.collections,
            child: Text('Copy'),),
          CupertinoContextMenuAction(onPressed : () {

          },trailingIcon: CupertinoIcons.share_up,
            child: Text('Share'),),
          CupertinoContextMenuAction(onPressed : () {

          },trailingIcon: CupertinoIcons.heart,
            child: Text('Favourite'),),
          CupertinoContextMenuAction(onPressed : () {

          },trailingIcon: CupertinoIcons.rectangle_on_rectangle,
            child: Text('Show in all photos'),),
          CupertinoContextMenuAction(onPressed : () {

          },trailingIcon: CupertinoIcons.delete,
            child: Text('Remove' , style: TextStyle(color: CupertinoColors.destructiveRed),),),
        ],
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: CupertinoColors.black,
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
        ),
      ),
    );
  }
}
