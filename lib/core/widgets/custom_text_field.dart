import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
    this.focusNode,
    this.maxLength,
    this.textAlign,
    this.autofocus,
    this.onChanged,
    this.validator,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLength;
  final TextAlign? textAlign;
  final bool? autofocus;
  final void Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength,
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0XFFF9FAFA),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        hintText: hintText,
        hintStyle: AppStyles.bold13,
        suffixIcon: suffixIcon,
        counterText: '',
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }

  _buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        width: 1,
        color: Color(0XFFE6E9EA),
      ),
    );
  }
}
