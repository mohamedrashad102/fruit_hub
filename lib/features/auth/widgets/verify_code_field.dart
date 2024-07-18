import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';

class VerifyCodeField extends HookWidget {
  const VerifyCodeField({super.key});

  static const int numberOfCells = 5;

  @override
  Widget build(BuildContext context) {
    final controllers = List.generate(
      numberOfCells,
      (index) => useTextEditingController(),
    );
    final nodes = List.generate(
      numberOfCells,
      (index) => FocusNode(),
    );

    return Row(
      children: List.generate(
        numberOfCells,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              end: index != numberOfCells - 1 ? 10 : 0,
            ),
            child: CustomTextField(
              controller: controllers[index],
              autofocus: index == numberOfCells - 1,
              focusNode: nodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              onChanged: (value) {
                if (value.isNotEmpty && index != 0) {
                  nodes[index - 1].requestFocus();
                } else if (index == 0 && value.isNotEmpty) {
                  nodes[index].unfocus();
                }
              },
            ),
          ),
        ),
      ).toList(),
    );
  }
}
