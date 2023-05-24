import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../wigtes/icon.dart';
import '../../wigtes/text.dart';

class show_row extends StatelessWidget {
  final text;
  final icon;
  final icon1;
  final color;
  show_row({super.key, this.text, this.icon, this.icon1, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: [
          Ricon(
            icon: icon,
            color: color,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Rtext(
            text,
            color: color,
            fontWeight: FontWeight.bold,
            size: 23,
          ),
          Spacer(),
          Ricon(
            icon: icon1,
            color: color,
            size: 25,
          ),
        ],
      ),
    );
  }
}
