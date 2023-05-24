import 'package:flutter/material.dart';

import '../show/show_composer/card_animals.dart';
import '../show/show_composer/card_child.dart';
import '../show/show_composer/card_nature.dart';
import '../show/show_home/bottom_navigation.dart';
import '../wigtes/text.dart';

class Composer extends StatelessWidget {
  const Composer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Child> children = [
      Child(text: 'Family voice', icon: Icons.girl),
      Child(
        text: 'White noise',
        icon: Icons.volume_up,
      ),
      Child(
        text: 'Lullaby',
        icon: Icons.nightlight_round,
      ),
    ];
    List<Nature> natureList = [
      Nature(text: 'Rain', icon: Icons.cloud),
      Nature(text: 'Forest', icon: Icons.forest),
      Nature(text: 'Ocean', icon: Icons.waves),
      Nature(text: 'Mountain', icon: Icons.terrain),
      Nature(text: 'Desert', icon: Icons.grass),
      // add more nature objects as needed
    ];
    final List<Animal> animals = [
      Animal(text: 'Petiolule', icon: Icons.bug_report),
      Animal(text: 'Cat', icon: Icons.pets),
      Animal(text: 'frog', icon: Icons.grass),
      Animal(text: 'Fish', icon: Icons.local_florist),
      // add more animal objects as needed
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Rtext(
                'Composer',
                fontWeight: FontWeight.bold,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Rtext(
                'Child',
                fontWeight: FontWeight.bold,
                size: 22,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Rtext(
                'Quickly stabilize your baby\'s emotions',
                fontWeight: FontWeight.bold,
                size: 18,
                color: Color(0xff9597A3),
              ),
            ),
            ChildList(
              children: children,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Rtext(
                'Nature',
                fontWeight: FontWeight.bold,
                size: 25,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Rtext(
                'It will allow you to merge with nature ',
                fontWeight: FontWeight.bold,
                size: 18,
                color: Color(0xff9597A3),
              ),
            ),
            NatureList(
              natureList: natureList,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Rtext(
                'Animals',
                fontWeight: FontWeight.bold,
                size: 25,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Rtext(
                'These sounds will help you forget about the silence ',
                fontWeight: FontWeight.bold,
                size: 17,
                color: Color(0xff9597A3),
              ),
            ),
            card_animal(
              animals: animals,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
