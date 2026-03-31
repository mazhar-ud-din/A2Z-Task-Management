import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_date_picker.dart';
import 'package:task_management/widgets/app_dropdown.dart';
import 'package:task_management/widgets/app_textfield.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  String? selectedPosition;
  DateTime? startDate;
  DateTime? endDate;

  void addProject() {
    final name = nameController.text.trim();
    final description = descriptionController.text.trim();
    if (selectedPosition == null) {
      debugPrint('Please select task group');
      return;
    }
    if (name.isEmpty) {
      debugPrint('Please enter project name');
      return;
    }
    if (description.isEmpty) {
      debugPrint('Please enter project description');
      return;
    }
    if (startDate == null) {
      debugPrint('Please select start date');
      return;
    }
    if (endDate == null) {
      debugPrint('Please select end date');
      return;
    }
    // api calling work is pending
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // appHeader(() {
              //   Navigator.pop(context);
              // }),
              const SizedBox(height: 16),
              appDropdown(
                hintText: 'Task Group',
                items: ["Manager", "Development", "Designing"],
                selectedValue: selectedPosition,
                onChanged: (value) {
                  setState(() {
                    selectedPosition = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              appTextfield(
                hintText: 'Project Name',
                controller: nameController,
              ),
              const SizedBox(height: 16),
              appTextfield(
                hintText: 'Description',
                controller: descriptionController,
              ),
              const SizedBox(height: 16),
              appDatePicker(
                context: context,
                hintText: 'Start Date',
                selectedDate: startDate,
                onDateSelected: (date) {
                  setState(() {
                    startDate = date;
                  });
                  debugPrint("Start Date: $date");
                },
              ),
              const SizedBox(height: 16),
              appDatePicker(
                context: context,
                hintText: 'End Date',
                selectedDate: endDate,
                onDateSelected: (date) {
                  setState(() {
                    endDate = date;
                  });
                  debugPrint("Start Date: $date");
                },
              ),
              const SizedBox(height: 30),
              appButton('Add Project', addProject),
            ],
          ),
        ),
      ),
    );
  }
}
