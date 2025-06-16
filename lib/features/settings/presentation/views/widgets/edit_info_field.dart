import 'package:flutter/material.dart';
import 'package:task/core/utils/assets.dart';

class EditInfoField extends StatelessWidget {
  const EditInfoField({super.key, required this.title, required this.hintText, this.prefixIcon, this.suffixIcon, required this.textInputType, this.onSaved, this.validator, this.controller, this.obscureText=false, this.onPressed,  this.readOnly =false});
final String title;
final bool readOnly;

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? obscureText;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontFamily: AppFonts.cairo,
          fontWeight: FontWeight.w900,
          fontSize: 13,
        ),),
        SizedBox(height: 2,),
        TextFormField(
          readOnly: readOnly,
          controller: controller,
          obscureText: obscureText!,
          keyboardType: textInputType,
          onSaved: onSaved,
          validator:
          validator ??
                  (value) {
                if (value == null || value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.black54,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 2,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xffE6E6E6)),
        ),
      ],

    );
  }
}
