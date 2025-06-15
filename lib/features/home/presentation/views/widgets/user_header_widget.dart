import 'package:flutter/material.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/home/presentation/views/widgets/icons_app_bar.dart';

class UserHeaderWidget extends StatelessWidget {
  const UserHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Positioned(
          child: CircleAvatar(

              maxRadius: 25, child: Image.asset(AssetsImage.userPhoto)),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              'salah',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black54,
                fontSize: 16,
              ),
            ),

          ],
        ),
        Spacer(),
        IconAppBar(image: AssetsImage.heartPhoto,),
        SizedBox(width: 20,),
        IconAppBar(image: AssetsImage.alarmPhoto),
      ],
    );
  }
}
