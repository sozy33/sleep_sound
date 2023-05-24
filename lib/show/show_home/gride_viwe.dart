import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/pages/Poreofil_logine.dart';

import '../../pages/home_ditail.dart';
import '../../wigtes/text.dart';

class grid_viwe extends StatefulWidget {
  const grid_viwe({super.key});

  @override
  State<grid_viwe> createState() => _grid_viweState();
}

class _grid_viweState extends State<grid_viwe> {
  List menuList = [
    _MenuItem('images/5.png', 'Guitar Camp', '7Songs . Instrumental'),
    _MenuItem('images/6.png', 'Chill-hop', '7Songs . Instrumental'),
    _MenuItem('images/7.png', 'Pack name ', '4Hours . Categoryname'),
    _MenuItem('images/8.png', 'Pack name', '4Hours . Categoryname'),
    _MenuItem('images/9.png', 'Pack name', '6Hours . Categoryname'),
    _MenuItem('images/10.png', 'Pack name', '6Hours . Categoryname'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: menuList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Get.to(() => HomeDetail());
                      } else if (index == 1) {
                        Get.to(() => profile_login());
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(menuList[index].imagePath),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff141927),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Rtext(
              menuList[index].title,
              color: Color(0xffFFFFFF),
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 5,
            ),
            Rtext(
              menuList[index].subtitle,
              color: Color(0xff9597A3),
              size: 16,
              fontWeight: FontWeight.bold,
            ),
          ],
        );
      },
    );
  }
}

class _MenuItem {
  final String imagePath;
  final String title;
  final String subtitle;

  _MenuItem(this.imagePath, this.title, this.subtitle);
}
