import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/pages/home.dart';
import 'package:sleep_sound/wigtes/text.dart';

import '../main.dart';
import '../show/show_home/bottom_navigation.dart';
import '../show/show_profilelogin/show_profile_continer.dart';
import '../show/show_profilelogin/show_row_profile.dart';
import '../show/show_profilelogout/profile_continer.dart';
import '../wigtes/icon.dart';

class ProfileController extends GetxController {
  void logout() {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        actionsOverflowDirection: VerticalDirection.up,
        backgroundColor: Color(0xff21283F),
        title: Rtext(
          'Logout',
          color: Color(0xffFFFFFF),
          size: 25,
          fontWeight: FontWeight.bold,
        ),
        content: Rtext(
          'Are you sure you want to logout?',
          color: Color(0xffFFFFFF),
          size: 20,
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Close dialog
              Get.back();
            },
            child: Rtext(
              'Cancel',
              color: Color(0xff4870FF),
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {
              // Perform the logout action here
              // For example, clear the user session and navigate to the login page
              Get.offAll(() => Home());
            },
            child: Rtext(
              'Logout',
              color: Color(0xff4870FF),
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class profile_logout extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());
  profile_logout({super.key});

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
            profile_continer1(
              value: Rtext(
                "Logout",
                color: Color(0xffFF9C41),
                size: 23,
                fontWeight: FontWeight.bold,
                onTap: () {
                  _profileController.logout();
                },
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
                    height: 18,
                  ),
                  show_row(
                    icon: Icons.favorite,
                    text: "favorite ",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  show_row(
                    icon: Icons.lock,
                    text: "Privacy policy",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  show_row(
                    icon: Icons.lock,
                    text: "Licenses Agreement",
                    icon1: Icons.arrow_forward_ios,
                    color: Color(0xffFFffffff),
                  ),
                  SizedBox(
                    height: 20,
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
