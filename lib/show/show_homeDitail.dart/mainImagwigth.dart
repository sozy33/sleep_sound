import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/pages/home.dart';
import 'package:sleep_sound/show/show_homeDitail.dart/slidingup.dart';
import '../../wigtes/icon.dart';
import '../../wigtes/text.dart';
import '../show_home/bottom_navigation.dart';

class MainimgWigit extends StatelessWidget {
  const MainimgWigit({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/11.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              Ricon(
                icon: Icons.arrow_back_ios,
                color: Colors.white,
                size: 30,
                onTap: () {
                  Get.to((Home()));
                },
              ),
              Rtext(
                'Sleep',
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Ricon(
                          icon: Icons.mood_bad,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Rtext(
                        'Mood',
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(height: 5),
                      Rtext(
                        'Light theathered',
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Ricon(
                          icon: Icons.nightlight_round,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Rtext(
                        'Dreams',
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(height: 5),
                      Rtext(
                        'Daydreams',
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
           
           
          ],
        ),
      ],
  
    );
  }
}
