import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';

import '../show/show_home/UnbordingContent.dart';
import 'home.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      Rtext(
                        contents[i].title,
                        size: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                      SizedBox(height: 20),
                      Rtext(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        size: 18,
                        color: Color.fromRGBO(192, 183, 183, 0.671),
                        maxlines: 2,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff21283F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Rtext(
                    color: Color(0xffEBEBF5),
                    size: 20,
                    fontWeight: FontWeight.bold,
                    currentIndex == contents.length - 1 ? "Start" : "Next",
                  ),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Home(),
                        ),
                      );
                    }
                    _controller.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ricon(
                  icon:   Icons.facebook,
                    color: Color(0xffFEFEFE),
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Rtext(
                    "Login with Apple",
                    color: Color(0xffFEFEFE),
                    fontWeight: FontWeight.bold,
                    size: 20,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xff21283F)),
    );
  }
}
