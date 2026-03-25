import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget circularProgressBar(String valueText) {
  return SizedBox(
    width: 40,
    height: 40,
    child: Stack(
      alignment: Alignment.center,
      children: [
        SizedBox.expand(
          child: CircularProgressIndicator(
            value: 0.7,
            strokeWidth: 6,
            backgroundColor: Colors.grey.shade300,
            valueColor: const AlwaysStoppedAnimation<Color>(
              AppColors.secondaryColor,
            ),
          ),
        ),
        Text(
          valueText,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontFamily: 'CustomSans',
          ),
        ),
      ],
    ),
  );
}
