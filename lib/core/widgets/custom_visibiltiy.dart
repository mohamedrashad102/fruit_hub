import 'package:flutter/material.dart';

class CustomVisibility extends StatelessWidget {
  const CustomVisibility({
    super.key,
    this.isVisible = true,
    required this.child,
  });
  final bool isVisible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isVisible ? child : const SizedBox.shrink();
  }
}
