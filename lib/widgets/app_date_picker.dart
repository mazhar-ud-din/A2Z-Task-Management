import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

Widget appDatePicker({
  required BuildContext context,
  required String hintText,
  DateTime? selectedDate,
  ValueChanged<DateTime?>? onDateSelected,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.circular(25),
    ),
    child: InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          builder: (context, child) {
            return Theme(
              data: ThemeData.dark().copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: Colors.blue,
                  onPrimary: AppColors.whiteColor ,
                  surface: Color(0xFF1E1E1E),
                  onSurface: AppColors.whiteColor,
                ),
              ),
              child: child!,
            );
          },
        );
        if (pickedDate != null && onDateSelected != null) {
          onDateSelected(pickedDate);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate != null
                  ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                  : hintText,
              style: TextStyle(
                color: selectedDate != null ? AppColors.whiteColor: Colors.grey,
                fontFamily: 'CustomSans',
                fontSize: 13,
              ),
            ),
            const Icon(Icons.calendar_today, color: Colors.grey, size: 20),
          ],
        ),
      ),
    ),
  );
}