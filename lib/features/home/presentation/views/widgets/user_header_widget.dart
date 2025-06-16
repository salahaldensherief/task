import 'package:flutter/material.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/home/presentation/views/widgets/icons_app_bar.dart';

class UserHeaderWidget extends StatelessWidget {
  const UserHeaderWidget({super.key, required this.name, required this.info, required this.radius});
  final String name;
  final String info;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: radius,
          child: Image.asset(AssetsImage.userPhoto),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            Text(
              info,
              style: const TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}