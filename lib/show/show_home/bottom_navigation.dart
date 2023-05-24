import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final BottomNavigationBarController controller =
      Get.put(BottomNavigationBarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.changeTab(index),
          backgroundColor: Color(0xff21283F),
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: Color(0xff4870FF),
          unselectedItemColor: Color(0xff8E8E93),
          elevation: 4,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.nightlight_round_outlined,
                color: Color(0xff8E8E93),
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                color: Color(
                  0xff8E8E93,
                ),
              ),
              label: 'Composer',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff8E8E93),
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarController extends GetxController {
  final selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.offAllNamed('/home');
        break;
      case 1:
        Get.offAllNamed('/composer');
        break;
      case 2:
        Get.offAllNamed('/profile_login');
        break;
      default:
        break;
    }
  }
}
