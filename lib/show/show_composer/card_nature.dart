import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sleep_sound/show/show_composer/card_child.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';

class NatureList extends StatelessWidget {
  final List<Nature> natureList;

  NatureList({required this.natureList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natureList.length,
        itemBuilder: (context, index) {
          return Card(
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
            color: index == 0 ? Color(0xff00D971) : Color(0xff21283F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Ricon(
                  icon: natureList[index].icon,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(height: 30),
                Container(
                  width: 117,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff2D344B),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Center(
                      child: Rtext(
                    natureList[index].text,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    size: 16,
                  )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Nature {
  final String text;
  final IconData icon;

  Nature({required this.text, required this.icon});
}
