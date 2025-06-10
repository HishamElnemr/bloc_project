import 'package:bloc_project/constants/app_colors.dart';
import 'package:flutter/material.dart';

List<Widget> buildAppBarActions({
  required bool isSearchEnabled,
  required void Function()? closeOnPressed,
  required void Function()? searchOnPressed,
}) {
  if (isSearchEnabled) {
    return [
      IconButton(
        icon: const Icon(Icons.close, color: AppColors.myGray),
        onPressed: closeOnPressed,
      ),
    ];
  } else {
    return [
      IconButton(
        icon: const Icon(Icons.search, color: AppColors.myGray),
        onPressed: searchOnPressed,
      ),
    ];
  }
}
