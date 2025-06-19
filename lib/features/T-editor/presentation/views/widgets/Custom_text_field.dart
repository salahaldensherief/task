import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  const CustomTextField({super.key, required this.controller, this.onChanged});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return TextField(
      controller: controller,
      maxLines: 12,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26, width: .1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        hintText: local.startTyping,
      ),
    );
  }
}
