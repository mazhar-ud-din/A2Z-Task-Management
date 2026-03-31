import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_dropdown.dart';
import 'package:task_management/widgets/app_header.dart';
import 'package:task_management/widgets/app_textfield.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  List<String?> images = [null, null, null];

  String? selectedMember;
  String? selectedPriority;
  String? selectedDifficulty;

  void handleCreateTask() {
    try {
      final title = titleController.text.trim();
      final description = titleController.text.trim();

      if (title.isEmpty) {
        debugPrint('Please enter task title');
        return;
      }
      if (description.isEmpty) {
        debugPrint('Please enter task description');
        return;
      }
      if (selectedMember == null) {
        debugPrint('Please select Member');
        return;
      }
      if (selectedPriority == null) {
        debugPrint('Please select Priority');
        return;
      }
      if (selectedDifficulty == null) {
        debugPrint('Please select Difficulty');
        return;
      }
    } catch (e) {
      debugPrint('imagesimages $images');

      debugPrint('description==> $e');
    }
  }

  Future<void> pickImage(int index) async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(
      source: ImageSource.camera, //gallery
      imageQuality: 70,
    );

    if (image != null) {
      setState(() {
        images[index] = image.path;
      });
    }
  }

  void removeImage(int index) {
    setState(() {
      images[index] = null;
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appHeader('Create New Task', () {
                  Navigator.pop(context);
                }),
                const SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(3, (index) {
                      return uploadBox(
                        imagePath: images[index],
                        onTap: () => pickImage(index),
                        onRemove: () => removeImage(index),
                      );
                    }),
                  ),
                ),

                const SizedBox(height: 20),

                appTextfield(
                  controller: titleController,
                  hintText: 'Task Title',
                  suffixIcon: Icon(
                    Icons.file_copy,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(height: 20),
                appTextfield(
                  controller: descriptionController,
                  hintText: 'Task Description',
                  // isDescription: false,
                ),
                const SizedBox(height: 20),
                appDropdown(
                  hintText: 'Select Member',
                  items: [
                    "Ivankov - Sr Front End Developer",
                    "Brahm - Mid Front End Developer",
                    "Alice - Sr Front End Developer",
                    "Alice - Sr Front End Developer",
                  ],
                  selectedValue: selectedMember,
                  onChanged: (value) {
                    setState(() {
                      selectedMember = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                appDropdown(
                  hintText: 'Select Priority',
                  items: ["Low", "Medium", "High"],
                  selectedValue: selectedPriority,
                  onChanged: (value) {
                    setState(() {
                      selectedPriority = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                appDropdown(
                  hintText: 'Select Difficulty',
                  items: [
                    "Very Easy (Less Than a Day)",
                    "Easy (A Day)",
                    "Moderate (3 Days)",
                    "Intermediate (5 Days)",
                    "Advanced (1 Week)",
                  ],
                  selectedValue: selectedDifficulty,
                  onChanged: (value) {
                    setState(() {
                      selectedDifficulty = value;
                    });
                  },
                ),
                SizedBox(height: 40),
                appButton(
                  'Create Task',
                  handleCreateTask,
                  buttonTextColor: AppColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget uploadBox({
  required String? imagePath,
  required VoidCallback onTap,
  required VoidCallback onRemove,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      children: [
        DottedBorder(
          color: AppColors.whiteColor,
          strokeWidth: 1.5,
          dashPattern: [6, 4],
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          child: Container(
            height: 80,
            width: 80,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: imagePath != null
                ? Image.file(File(imagePath), fit: BoxFit.cover)
                : const Center(
                    child: Icon(Icons.upload, color: AppColors.whiteColor),
                  ),
          ),
        ),

        // ❌ Remove Button
        if (imagePath != null)
          Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, size: 18, color: Colors.white),
              ),
            ),
          ),
      ],
    ),
  );
}
