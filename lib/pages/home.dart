import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';
import '../show/show_home/bottom_navigation.dart';
import '../show/show_home/continer.dart';
import '../show/show_home/gride_viwe.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          children: [
            Rtext(
              "Discover",
              color: Color(0xffFFFFFF),
              size: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Continer1(
                  width: 80,
                  text: "All",
                  icon: Icons.menu,
                  color: Color(0xff4870FF),
                ),
                Continer1(
                  text: "Ambient",
                  icon: Icons.ac_unit,
                  color: Color(0xff0ff21283F),
                  width: 125,
                ),
                Continer1(
                  width: 125,
                  text: "For Kids",
                  icon: Icons.shopping_cart,
                  color: Color(0xff0ff21283F),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            grid_viwe(),
            SizedBox(
              height: 30,
            ),
            //  BottomNavigationBarWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
