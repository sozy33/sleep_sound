import 'package:flutter/material.dart';

class Rtext extends StatelessWidget {
  final title, size;
  final TextAlign textAlign;
  final int maxlines;
  final double wordSpacing;
  final FontWeight fontWeight;
  final GestureTapCallback? onTap;
  final Color? color;
  final String? fontFamily;

  const Rtext(
    this.title, {
    Key? key,
    this.size = 15.0,
    this.fontWeight = FontWeight.normal,
    this.maxlines = 1,
    this.textAlign = TextAlign.start,
    this.wordSpacing = 1,
    this.onTap,
    this.color,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        textAlign: textAlign,
        maxLines: maxlines,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          style: TextStyle(
            wordSpacing: wordSpacing,
            color: color ?? Colors.black,
            fontFamily: fontFamily ?? "font",
            fontSize: double.parse(size.toString()),
          ),
          text: "$title",
        ),
      ),
    );
  }
}
