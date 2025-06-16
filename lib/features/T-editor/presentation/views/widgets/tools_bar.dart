import 'package:flutter/material.dart';

class ToolsBar extends StatelessWidget {
  const ToolsBar({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.format_list_bulleted,
      Icons.format_list_numbered,
      Icons.format_align_left,
      Icons.format_align_center,
      Icons.format_align_right,
      Icons.format_align_justify,
    ];

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Color(0xffF8F7FC)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            icons.map((icon) {
              return IconButton(icon: Icon(icon), onPressed: () {});
            }).toList(),
      ),
    );
  }
}
