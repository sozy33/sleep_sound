import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sleep_sound/wigtes/icon.dart';
import 'package:sleep_sound/wigtes/text.dart';

class card_animal extends StatelessWidget {
  final List<Animal> animals;

  const card_animal({super.key, required this.animals});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return Card(
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
            color: index == 2 ? Color(0xffFF9C41) : Color(0xff21283F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Ricon(
                  icon: animals[index].icon,
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
                      animals[index].text,
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

class Animal {
  final String text;
  final IconData icon;

  Animal({
    required this.text,
    required this.icon,
  });
}
