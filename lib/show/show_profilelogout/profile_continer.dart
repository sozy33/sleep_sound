import 'package:flutter/material.dart';

import '../../wigtes/text.dart';

class profile_continer1 extends StatelessWidget {
  final value;
  const profile_continer1({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xff21283F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage("images/13.png"),
            height: 100,
            width: 100,
          ),
          Rtext(
            "First name Last name",
            color: Color(0xffFFFFFF),
            size: 23,
            fontWeight: FontWeight.bold,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Rtext(
              'Login with Apple ID'
              ' email@gmail',
              color: Color(0xff9597A3),
              size: 17,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              maxlines: 2,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          value,
        ],
      ),
    );
  }
}
