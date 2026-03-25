import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_border_button.dart';
import 'package:task_management/widgets/app_button.dart';

class Validators {
  Validators._();
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(email);
  }
}

class AppDialogs {
  AppDialogs._();
  static void showWelcomeSheet(
    BuildContext context,
    VoidCallback onTop,
    VoidCallback onTop1,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.translate(
                offset: const Offset(0, -50),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Welcome To Work Mate!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'CustomSans',
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "To enhance your user experience, please set up your profile first.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'CustomSans',
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 20),

              InkWell(
                onTap: onTop1,
                child: appButton('Set Up My Profile', () {}),
              ),

              const SizedBox(height: 10),
              InkWell(
                onTap: onTop,
                child: appBorderButton(
                  'Explore The App First',
                  () {},
                  buttonLabelColor: AppColors.secondaryColor,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
