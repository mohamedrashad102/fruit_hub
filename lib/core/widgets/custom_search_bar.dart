import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.black45,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن ...',
                hintStyle: AppStyles.regular16.copyWith(color: Colors.black45),
                filled: true,
                fillColor: Colors.white,
                border: _buildBorder(),
                enabledBorder: _buildBorder(),
                focusedBorder: _buildBorder(),
              ),
            ),
          ),
          const Icon(
            Icons.filter_list,
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
