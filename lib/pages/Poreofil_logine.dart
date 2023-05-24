import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/pages/profile_logout.dart';
import 'package:sleep_sound/wigtes/text.dart';

import '../show/show_home/bottom_navigation.dart';
import '../show/show_profilelogin/show_profile_continer.dart';
import '../show/show_profilelogin/show_row_profile.dart';
import '../wigtes/icon.dart';

class profile_login extends StatelessWidget {
  const profile_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Rtext(
                "Profile",
                color: Color(0xffFFFFFF),
                size: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            profile_continer(
              value: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 60),
                  primary: Color(0xff141927),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  Get.to((profile_logout()));
                },
                child: Row(
                  children: [
                    Ricon(
                      icon: Icons.apple,
                      color: Color(0xffFFFFFF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Rtext(
                      "Login with Apple ID",
                      color: Color(0xffFFFFFF),
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: ListView(
                children: [
                  show_row(
                    icon: Icons.person,
                    text: "Get premium",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFF9C41),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  show_row(
                    icon: Icons.lock,
                    text: "Privacy policy",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  show_row(
                    icon: Icons.lock,
                    text: "Licenses Agreement",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  show_row(
                    icon: Icons.star,
                    text: "Rate us",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  show_row(
                    icon: Icons.message,
                    text: "Send feedback",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 74,
            ),
            BottomNavigationBarWidget(),
          ],
        ),
      ),
    );
  }
}
