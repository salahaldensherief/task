import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final void Function(String)? onChanged;
  const CustomTextField({
    super.key,
    required this.controller, this.onChanged,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 12,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Start typing...",
      ),
    );
  }
}
