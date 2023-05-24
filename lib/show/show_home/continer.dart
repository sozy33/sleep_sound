import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../wigtes/icon.dart';
import '../../wigtes/text.dart';


class Continer1 extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final int width;

  const Continer1({
    super.key,
    required this.text,
    required this.icon,
    this.color = Colors.blue,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 20),
      height: 45,
      width: width.toDouble(),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Ricon(
            icon: icon,
            color: Color(0xffFFFFFF),
            size: 20,
            
          ),
          SizedBox(
            width: 5,
          ),
          Rtext(
          
            text,
            color: Color(0xffFFFFFF),
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
