import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget appHeader(String headerText, VoidCallback goBack, {Widget? rightIcon}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: goBack,
          icon: const Icon(Icons.arrow_back, color: AppColors.whiteColor),
        ),
      ),

      Expanded(
        child: Center(
          child: Text(
            headerText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'CustomSans',
            ),
          ),
        ),
      ),

      rightIcon != null
          ? IconButton(onPressed: () {}, icon: rightIcon)
          : const SizedBox(width: 48),
    ],
  );
}
