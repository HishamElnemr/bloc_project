import 'package:bloc_project/constants/app_colors.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({Widget? title, List<Widget>? actions}) {
  return AppBar(
    backgroundColor: AppColors.myYellow,
    title: title ,
    actions: actions ?? [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
  );
}
