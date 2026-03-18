import 'package:flutter/material.dart';

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
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(18),
        suffixIcon: suffixIcon,
      ),
    ),
  );
}
