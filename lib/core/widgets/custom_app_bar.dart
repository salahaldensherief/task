import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onBack;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBack = false,
    this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: showBack
              ? IconButton(
            icon: Image.asset(AssetsImage.backIcon),
            onPressed: onBack ?? () => Navigator.of(context).pop(),
          )
              : null,
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 1,
           decoration: BoxDecoration(
             boxShadow: [
                BoxShadow(
                   color: Colors.grey.shade400,
                  spreadRadius: .1,
                  offset: Offset(0, 1),
                  blurRadius: 2,

                )
             ]
           ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
