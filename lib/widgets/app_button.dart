import 'package:flutter/material.dart';

Widget appButton(String buttonLabel, VoidCallback onPressedButton) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressedButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFf1561f),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
