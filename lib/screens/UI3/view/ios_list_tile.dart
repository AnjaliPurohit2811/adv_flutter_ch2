import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosListTile extends StatelessWidget {
  const IosListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('My People'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return CupertinoListTile(
              title: Text(
                'Person ${index + 1}',
              ),
              subtitle: Text('${index+1}'),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}

int index = 0;
