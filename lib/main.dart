import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/pages/Poreofil_logine.dart';
import 'package:sleep_sound/pages/composer.dart';
import 'package:sleep_sound/pages/home.dart';
import 'package:sleep_sound/pages/home_ditail.dart';
import 'package:sleep_sound/pages/login.dart';
import 'package:sleep_sound/pages/player.dart';
import 'package:sleep_sound/pages/profile_logout.dart';
import 'package:sleep_sound/wigtes/text.dart';
import 'package:splash_view/splash_view.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 17, 21, 32),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashView(
            logo: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Lottie.asset(
                'images/fox.json',
                width: 250,
                height: 250,
              ),
            ),
            title: Rtext(
              "Sleep Sounds",
              color: Color(0xffFFFFFF),
              size: 30,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Rtext(
                    "Created By",
                    color: Color.fromRGBO(192, 183, 183, 0.671),
                    size: 18,
                  ),
                  Rtext(
                    "Uladluch",
                    color: Color.fromRGBO(192, 183, 183, 0.671),
                    size: 25,
                  ),
                ],
              ),
            ),
            done: Done(Onbording()),
            duration: const Duration(seconds: 5),
          ),
        ),
        GetPage(name: '/onbording', page: () => Onbording()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/HomeDetail', page: () => HomeDetail()),
        GetPage(name: '/profile_login', page: () => profile_login()),
        GetPage(name: '/composer', page: () => Composer()),
        GetPage(name: '/profile_logout', page: () => profile_logout()),
        GetPage(name: '/player', page: () => player()),
      ],
    ),
  );
}
