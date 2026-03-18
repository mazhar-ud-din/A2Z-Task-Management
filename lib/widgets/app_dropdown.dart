import 'package:flutter/material.dart';

Widget appDropdown({
  required String hintText,
  required List<String> items,
  String? selectedValue,
  ValueChanged<String?>? onChanged,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.circular(25),
    ),
    child: DropdownButtonFormField<String>(
      value: selectedValue,
      dropdownColor: Colors.grey.shade900,
      style: const TextStyle(color: Colors.white, fontSize: 16),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      ),
      icon: const Icon(Icons.arrow_drop_down),
      hint: Text(hintText, style: const TextStyle(color: Colors.grey)),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
          .toList(),
      onChanged: onChanged,
    ),
  );
}
