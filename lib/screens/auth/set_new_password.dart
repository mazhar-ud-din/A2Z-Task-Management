import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_textfield.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String otpCode = "";

  void newPasswordHandler() {
    try {
      final password = passwordController.text.trim();
      final confirmPassword = confirmPasswordController.text.trim();

      if (password.isEmpty) {
        debugPrint('Please enter password');
        return;
      }
      if (confirmPassword.isEmpty) {
        debugPrint('Please enter confirm password');
        return;
      }
      if (password != confirmPassword) {
        debugPrint('Password does not match');
        return;
      }
      Navigator.pushNamed(context, '/login');
    } catch (error) {
      debugPrint('error==> $error');
    }
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.6),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.black,
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
                          Icons.lock,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Set a New Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'CustomSans',
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "Please set a new password to secure your Work Mate account.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CustomSans',
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 20),

                    appTextfield(
                      hintText: 'Password',
                      controller: passwordController,
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 20),

                    appTextfield(
                      hintText: 'Confirm Password',
                      controller: confirmPasswordController,
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 20),

                    appButton(
                      "Submit",
                      newPasswordHandler,
                      buttonTextColor: Colors.white,
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
