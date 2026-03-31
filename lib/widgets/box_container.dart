import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget boxContainer({
  required Widget child,
  double mainWith = double.infinity,
  EdgeInsets mainPadding = const EdgeInsets.all(15),
  BorderRadius mainBorderRadius = const BorderRadius.all(Radius.circular(15)),
}) {
  return Container(
    width: mainWith,
    padding: mainPadding,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: mainBorderRadius,
    ),
    child: child,
  );
}
