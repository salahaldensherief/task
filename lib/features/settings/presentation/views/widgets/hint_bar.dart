import 'package:flutter/material.dart';
import 'package:task/core/utils/assets.dart';

class HintBar extends StatelessWidget {
  const HintBar({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Text(
      hintText,
      style: TextStyle(
        fontFamily: AppFonts.cairo,
        fontWeight: FontWeight.w900,
        fontSize: 14,
      ),
    );
  }
}
