import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 20,
        height: 20,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.secColor : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
            side: BorderSide(width: 2.3, color: Colors.black),
          ),
        ),
        child:
            isChecked
                ? Center(child: Icon(size: 16, Icons.check))
                : const SizedBox(),
      ),
    );
  }
}
