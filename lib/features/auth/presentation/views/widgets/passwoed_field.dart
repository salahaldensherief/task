import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
    required this.hintText,
    this.controller,
    this.validator,
  });

  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  final String hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(

      controller: widget.controller,
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText:  widget.hintText ,

      validator:
          widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'This field cannot be empty';
            }
            return null;
          },

      textInputType: TextInputType.visiblePassword,
      prefixIcon: const Icon(Icons.lock ,size: 26, color: Colors.black54),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },

        child: Icon(
          obscureText ? Icons.visibility : Icons.visibility_off,
          color: obscureText ? Colors.grey : Colors.grey,
        ),
      ),

    );
  }
}
