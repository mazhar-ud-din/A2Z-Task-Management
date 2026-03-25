import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget appTextfield({
  required String hintText,
  bool obscureText = false,
  Widget? suffixIcon,
  TextEditingController? controller,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.circular(25),
    ),
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: AppColors.whiteColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.whiteColor,
          fontFamily: 'CustomSans',
          fontSize: 13,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(18),
        suffixIcon: suffixIcon,
      ),
    ),
  );
}
