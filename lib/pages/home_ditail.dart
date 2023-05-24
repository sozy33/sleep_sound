import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';
import '../show/show_home/bottom_navigation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../show/show_homeDitail.dart/mainImagwigth.dart';
import '../show/show_homeDitail.dart/slidingup.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SlidingUpPanel(
                color: Color(0xff141927),
                backdropOpacity: 0.5,
                minHeight: 250,
                maxHeight: 820,
                padding: EdgeInsets.only(top: 20, left: 20),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                panelBuilder: (ScrollController sc) => sliding_up(),
                body: MainimgWigit(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
