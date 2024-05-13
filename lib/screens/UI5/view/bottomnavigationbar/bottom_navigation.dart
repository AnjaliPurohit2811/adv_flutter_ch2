import 'package:adv_flutter_ch2/screens/UI3/view/ios_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_flutter_ch2/screens/UI5/provider/bottom_provider.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LightBottomNavigationBar(
        currentIndex: Provider.of<BottomProvider>(context).bottomIndex,
        items: [
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.home_outlined,
              selectedIcon: Icons.home_outlined,
              size: 30,
              backgroundShadowColor: Colors.red,
              borderBottomColor: Colors.red,
              borderBottomWidth: 3,
              // highlightColor: Colors.red,
              // hoverColor: ,
              splashColor: Colors.red,
              selectedIconColor: Colors.red,
              unSelectedIconColor: Colors.red
          ),
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.search_outlined,
              selectedIcon: Icons.search_outlined,
              size: 30,
              backgroundShadowColor: Colors.blue,
              borderBottomColor: Colors.blue,
              borderBottomWidth: 3,
              // highlightColor: Colors.red,
              // hoverColor: ,
              splashColor: Colors.blue,
              selectedIconColor: Colors.blue,
              unSelectedIconColor: Colors.blue
          ),
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.star_border_outlined,
              selectedIcon: Icons.star_border_outlined,
              size: 30,
              backgroundShadowColor: Colors.yellowAccent,
              borderBottomColor: Colors.yellowAccent,
              borderBottomWidth: 3,
              // highlightColor: Colors.red,
              // hoverColor: ,
              splashColor: Colors.yellowAccent,
              selectedIconColor: Colors.yellowAccent,
              unSelectedIconColor: Colors.yellowAccent
          ),
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.done_outline_rounded,
              selectedIcon: Icons.done_outline_rounded,
              size: 30,
              backgroundShadowColor: Colors.green,
              borderBottomColor: Colors.green,
              borderBottomWidth: 3,
              // highlightColor: Colors.red,
              // hoverColor: ,
              splashColor: Colors.green,
              selectedIconColor: Colors.green,
              unSelectedIconColor: Colors.green
          ),
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.person_outline,
              selectedIcon: Icons.person_outline,
              size: 30,
              backgroundShadowColor: Colors.purpleAccent,
              borderBottomColor: Colors.purpleAccent,
              borderBottomWidth: 3,
              // highlightColor: Colors.red,
              // hoverColor: ,
              splashColor: Colors.purpleAccent,
              selectedIconColor: Colors.purpleAccent,
              unSelectedIconColor: Colors.purpleAccent
          ),
        ],
        onSelected: (index){
          print('tab$index');
        }
      ),
    );
  }
}
