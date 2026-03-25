import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_button.dart';

class ForgetOtpScreen extends StatefulWidget {
  const ForgetOtpScreen({super.key});

  @override
  State<ForgetOtpScreen> createState() => _ForgetOtpScreenState();
}

class _ForgetOtpScreenState extends State<ForgetOtpScreen> {
  String otpCode = "";

  void forgetOtpHandler() {
    try {
      if (otpCode == "") {
        debugPrint('Please enter otp');
        return;
      }
      Navigator.pushNamed(context, '/setNewPassword');
    } catch (error) {
      debugPrint('error==> $error');
    }
  }

  @override
  void dispose() {
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
                      "A reset code has been sent to a2zCreatorz@gmail.com, check your email to continue the password reset process.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CustomSans',
                        color: AppColors.whiteColor,
                      ),
                    ),

                    const SizedBox(height: 20),
                    PinCodeTextField(
                      appContext: context,
                      textStyle: const TextStyle(
                        color: AppColors.whiteColor,
                      ),
                      length: 6,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        otpCode = value;
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeColor: AppColors.primaryColor,
                        selectedColor: AppColors.primaryColor,
                        inactiveColor: AppColors.whiteColor,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Haven’t received the code? ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'CustomSans',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            debugPrint("Resend OTP");
                          },
                          child: const Text(
                            "Resend it",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    appButton(
                      "Submit",
                      forgetOtpHandler,
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
