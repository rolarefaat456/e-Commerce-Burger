
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.textStyle, this.textAlign = TextAlign.center});
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle, textAlign: textAlign,);
  }
}
