import 'package:bloc_project/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key, required this.controller, required this.onChanged});
  final TextEditingController controller;
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.myGray,
      decoration: InputDecoration(
        hintText: 'Find a character...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: AppColors.myGray, fontSize: 18),
      ),
      style: TextStyle(color: AppColors.myGray, fontSize: 18),
      onChanged: onChanged,
    );
  }
}
