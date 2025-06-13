import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget {
  const IconAppBar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double barHeight =
        screenWidth < 360 ? 36.0 : (screenWidth < 600 ? 60.0 : 50.0);
    return Row(
      children: [
        Container(
          height: barHeight,
          width: screenWidth < 360 ? 55.0 : (screenWidth < 600 ? 60.0 : 70.0),
          decoration: BoxDecoration(
            color: Color(0xffF5FBF9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Image.asset(
              image,
              width:
                  screenWidth < 360 ? 20.0 : (screenWidth < 600 ? 25.0 : 27.0),
            ),
          ),
        ),
      ],
    );
  }
}
