import 'package:flutter/material.dart';

Widget appButton(String buttonLabel, VoidCallback onPressedButton,{double fontSize = 16,buttonTextColor = Colors.black,buttonPadding=const EdgeInsets.symmetric(vertical: 16)}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressedButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFf1561f),
        padding: buttonPadding,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          fontFamily: 'CustomSans',
        ),
      ),
    ),
  );
}
