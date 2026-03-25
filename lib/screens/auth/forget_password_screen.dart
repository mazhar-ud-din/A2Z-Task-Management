import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/constant/static_function.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_textfield.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController eamilController = TextEditingController();

  String otpCode = "";

  void forgetHandler() {
    try {
      final email = eamilController.text.trim();
      if (email.isEmpty) {
        debugPrint('Please enter email');
        return;
      }
      if (!Validators.isValidEmail(email)) {
        debugPrint('Please enter a valid email');
        return;
      }
      Navigator.pushNamed(context, '/forgetOtp');
    } catch (error) {
      debugPrint('error==> $error');
    }
  }

  @override
  void dispose() {
    eamilController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

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
                  color: AppColors.secondaryColor,
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
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'CustomSans',
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "Reset password code will be sent to your email to reset your password.",
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
                      hintText: 'Email',
                      controller: eamilController,
                      suffixIcon: Icon(
                        Icons.email,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 20),

                    appButton(
                      "Send Verification Code",
                      forgetHandler,
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
