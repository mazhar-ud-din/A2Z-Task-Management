import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget appBorderButton(
  String buttonLabel,
  VoidCallback onPressButton, {
  Widget? iconButton,
  buttonLabelColor = AppColors.whiteColor, // ✅ optional
}) {
  return InkWell(
    onTap: onPressButton,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconButton != null) ...[iconButton, const SizedBox(width: 10)],
          SizedBox(width: 10),
          Text(
            textAlign: TextAlign.center,
            buttonLabel,
            style: TextStyle(
              color: buttonLabelColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'CustomSans',
            ),
          ),
        ],
      ),
    ),
  );
}
