import 'package:flutter/material.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';

class ChildList extends StatelessWidget {
  final List<Child> children;

  ChildList({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (context, index) {
          return Card(
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
            color: index == 1
                ? Colors.blue
                : Color(
                    0xff21283F), // Check if the index is 1, then set the color to blue, otherwise set it to the default color
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Ricon(
                  icon: children[index].icon,
                  color: children[index].color,
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
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Center(
                    child: Rtext(
                      children[index].text,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Child {
  final String text;
  final IconData icon;
  final Color color;

  Child({
    required this.text,
    required this.icon,
    this.color = Colors.white,
  });
}
