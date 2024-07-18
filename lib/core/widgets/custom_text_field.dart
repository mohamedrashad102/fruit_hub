import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0XFFF9FAFA),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        hintText: hintText,
        hintStyle: AppStyles.bold13,
        suffixIcon: suffixIcon,
      ),
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
