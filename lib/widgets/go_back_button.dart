import 'package:flutter/material.dart';

Widget goBackButton(VoidCallback goBack) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade800,
      borderRadius: BorderRadius.circular(12),
    ),
    child: IconButton(
      onPressed: goBack,
      icon: const Icon(Icons.arrow_back, color: Colors.white),
    ),
  );
}
